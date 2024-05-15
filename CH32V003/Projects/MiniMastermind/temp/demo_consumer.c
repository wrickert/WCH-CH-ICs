#include "ch32v003fun.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "rv003usb.h"

int main()
{
	SystemInit();
	Delay_Ms(1); // Ensures USB re-enumeration after bootloader or reset; Spec demand >2.5µs ( TDDIS )
	usb_setup();

   funGpioInitAll();
   funPinMode( PD5, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PD5, true);
   funPinMode( PD6, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PD6, true);
   funPinMode( PD7, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PD7, true);
   funPinMode( PA1, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PA1, true);
	while(1);
}

void usb_handle_user_in_request( struct usb_endpoint * e, uint8_t * scratchpad, int endp, uint32_t sendtok, struct rv003usb_internal * ist )
{

	if (endp ==1) {
		// If it's a data endpoint (not control), handle consumer control data
		static uint8_t consumer_data[4] = { 0x00, 0x00};//, 0x00, 0x00}; // Placeholder data

		// Modify consumer_data array to represent consumer control data
		// For example, to adjust volume, you would change the second byte (0x00) to represent the volume level
		
      if(!funDigitalRead(PD6)){
         consumer_data[0] = 0x01;
         consumer_data[1] = 0x00;
//         consumer_data[2] = 0x00;
//         consumer_data[3] = 0x00;
      }
      else if(!funDigitalRead(PD7)){
         consumer_data[0] = 0x02;
         consumer_data[1] = 0x00;
//         consumer_data[2] = 0x00;
//         consumer_data[3] = 0x00;
		}	
/*
      else if(!funDigitalRead(PA1)){
         consumer_data[0] = 0x01;
//         consumer_data[1] = 0x00;
//         consumer_data[2] = 0x01;
//         consumer_data[3] = 0x00;
		}	
*/
		else{
			consumer_data[0] = 0x00;
//			consumer_data[1] = 0x00;
//			consumer_data[2] = 0x00;
//			consumer_data[4] = 0x00;
		}
	
		// Send consumer data
		usb_send_data(consumer_data, sizeof(consumer_data), 0, sendtok);
	 } 

	else {
	  // If it's a control transfer, NAK it.
	  usb_send_empty(sendtok);
 }
}

