#include "ch32v003fun.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "rv003usb.h"

uint32_t  timer = 0;
#define DEBOUNCE_TIME 50 // Debounce time in milliseconds
uint8_t buttons = 0;

// Define states for the state machine
typedef enum {
    RELEASED,
    MAYBE_PRESSED,
    PRESSED,
    MAYBE_RELEASED
} ButtonState;

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
   
   static uint32_t lastTimer = 0;
     
    ButtonState currentState = RELEASED;
    bool buttonPressed = false;

	while(1){
		bool buttonState = !funDigitalRead(PD5);         
      
      if(buttonState){
         buttons = 1;
         led();
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

   }
}

void led(){
   
   funPinMode( PC2,  GPIO_Speed_10MHz | GPIO_CNF_OUT_PP );
   funDigitalWrite( PC2, true);
         funDigitalWrite( PC2, FUN_LOW);
}

void usb_handle_user_in_request( struct usb_endpoint * e, uint8_t * scratchpad, int endp, uint32_t sendtok, struct rv003usb_internal * ist )
{

	if (endp ==1) {
		// If it's a data endpoint (not control), handle consumer control data
		static uint8_t consumer_data[1] = { 0x00};//, 0x00};//, 0x00, 0x00}; // Placeholder data

      if(buttons){
         led();
         consumer_data[0] = 0x02;
         buttons = 0;
      }
		

		// Modify consumer_data array to represent consumer control data
		// For example, to adjust volume, you would change the second byte (0x00) to represent the volume level
		
/*      
      if(buttons & 0b10000000){
				consumer_data[0] = 0x01;
		}
      else if(buttons & 0b01000000){
         consumer_data[0] = 0x02;
		}	
      else if(buttons & 0b00100000){
         consumer_data[0] = 0x04;
		}	
      else if(buttons & 0b00010000){
         consumer_data[0] = 0x08;
		}	
		else{
			consumer_data[0] = 0x00;
         buttons = 0;
		}
	
*/


		// Send consumer data
		usb_send_data(consumer_data, sizeof(consumer_data), 0, sendtok);
	 } 

	else {
	  // If it's a control transfer, NAK it.
	  usb_send_empty(sendtok);
 }
}

