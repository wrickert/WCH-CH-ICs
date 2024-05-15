#include "ch32v003fun.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "rv003usb.h"

uint32_t  timer = 0;
#define DEBOUNCE_DELAY 1000 // Debounce time in milliseconds
volatile uint8_t buttons = 0;
uint32_t last_time = 0;
uint32_t count;
int last = 0;

//void handle_debug_input( int numbytes, uint8_t * data );

int main()
{
	SystemInit();
	Delay_Ms(1); // Ensures USB re-enumeration after bootloader or reset; Spec demand >2.5µs ( TDDIS )
	usb_setup();
//   SysTick_Init();

   funGpioInitAll();
   funPinMode( PD5, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PD5, true);
   funPinMode( PD6, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PD6, true);
   funPinMode( PD7, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PD7, true);
   funPinMode( PA1, GPIO_CFGLR_IN_PUPD);
   funDigitalWrite( PA1, true);
   
     

   while(1){
         
      if(!funDigitalRead(PD5)){     //    buttonState){
            printf("\nButton 1 SUCCESS!\n");
            buttons = 1;
            Delay_Ms(100);
      }
      else if(!funDigitalRead(PD6)){     //    buttonState){
            printf("\nButton 2 SUCCESS!\n");
            buttons = 2;
            Delay_Ms(100);
      }
      else if(!funDigitalRead(PD7)){     //    buttonState){
            printf("\nButton 3 SUCCESS!\n");
            buttons = 3;
            Delay_Ms(100);
      }
      else if(!funDigitalRead(PA1)){     //    buttonState){
            printf("\nButton 4 SUCCESS!\n");
            buttons = 4;
            Delay_Ms(100);
      }

      Delay_Ms(100);
   }

}

void usb_handle_user_in_request( struct usb_endpoint * e, uint8_t * scratchpad, int endp, uint32_t sendtok, struct rv003usb_internal * ist )
{

	if (endp ==1) {
		// If it's a data endpoint (not control), handle consumer control data
		static uint8_t consumer_data[1] = { 0x00};//, 0x00};//, 0x00, 0x00}; // Placeholder data

     // printf("In USB\n");

      //Play/Pause
      if(buttons == 1){
         consumer_data[0] = 0x01;
         buttons = 0;
      }
      //Mute
      else if(buttons == 2){
         consumer_data[0] = 0x02;
         buttons = 0;
      }
      //Back
      else if(buttons == 3){
         consumer_data[0] = 0x03;
         buttons = 0;
      }
      //Forward
      // This works
      else if(buttons == 4){
         consumer_data[0] = 0x04;
         buttons = 0;
      }


      else{
         consumer_data[0] = 0x00;
      }
		
      usb_send_data(consumer_data, sizeof(consumer_data), 0, sendtok);

	 } 

	else {
	  // If it's a control transfer, NAK it.
	  usb_send_empty(sendtok);
 }
}

void handle_debug_input( int numbytes, uint8_t * data )
{
   last = data[0];
   count += numbytes;
}

/*
        // State machine logic
        switch (currentState) {
            case RELEASED:
                if (buttonState) {
                    currentState = MAYBE_PRESSED;
							Delay_Ms(1000);
                }
                break;
            case MAYBE_PRESSED:
                if (buttonState) {
                    currentState = PRESSED;
                    buttonPressed = true;
                } else {
                    currentState = RELEASED;
                }
                break;
            case PRESSED:
                if (!buttonState) {
                    currentState = MAYBE_RELEASED;
							Delay_Ms(1000);
                }
                break;
            case MAYBE_RELEASED:
                if (!buttonState) {
                    currentState = RELEASED;
                    buttonPressed = false;
                } else {
                    currentState = PRESSED;
                }
                break;
        }

        // Button action when pressed
        if (buttonPressed) {

         buttons |= 0b10000000;
			}

			Delay_Ms(12600);
}
 */      

