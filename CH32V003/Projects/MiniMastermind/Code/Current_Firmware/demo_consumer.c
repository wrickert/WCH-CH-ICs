#include "ch32v003fun.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "rv003usb.h"

uint32_t  timer = 0;
#define DEBOUNCE_TIME 50 // Debounce time in milliseconds
#define DEBOUNCE_DELAY 1000 // Debounce time in milliseconds
volatile uint8_t buttons = 0;
uint32_t last_time = 0;


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
	uint32_t lastButtonState = 0;
	uint32_t debounceTime = 0;
    bool buttonPressed = false;

	while(1){
		bool buttonState = !funDigitalRead(PD5);         

    // Implement debounce logic
    if (buttonState != lastButtonState) {
        debounceTime = SysTick->CNT;                  // Start debounce timer
    }
    if ((SysTick->CNT - debounceTime) > DEBOUNCE_DELAY) {
        // Debounce delay has passed, update lastButtonState
        lastButtonState = buttonState;
    }

   
    // Check for button press after debounce delay
    if (buttonState && !lastButtonState) {           // Check if button is pressed and was previously released
      
     // if(buttonState){
         //for(int i  = 0; i < 100; i++) {}
        if ((SysTick->CNT - last_time) > 500) {
           last_time = SysTick->CNT; 
         buttons = 1;
            }
         }

	Delay_Ms(100);
   }
}

static uint32_t g_systickCount = 0;
/**
 * @brief  Enable the SysTick module
 * @param  None
 * @return None
 */
static void SysTick_Init(void)
{
    /* some bit definitions for systick regs */
#define SYSTICK_SR_CNTIF   (1 << 0)
#define SYSTICK_CTLR_STE   (1 << 0)
#define SYSTICK_CTLR_STIE  (1 << 1)
#define SYSTICK_CTLR_STCLK (1 << 2)
#define SYSTICK_CTLR_STRE  (1 << 3)
#define SYSTICK_CTLR_SWIE  (1 << 31)
    /* disable default SysTick behavior */
    SysTick->CTLR = 0;

    /* enable the SysTick IRQ */
    NVIC_EnableIRQ(SysTicK_IRQn);

    /* Set the tick interval to 1ms for normal op */
    SysTick->CMP = (FUNCONF_SYSTEM_CORE_CLOCK / 1000) - 1;

    /* Start at zero */
    SysTick->CNT = 0;
    g_systickCount = 0;

    /* Enable SysTick counter, IRQ, HCLK/1 */
    SysTick->CTLR = SYSTICK_CTLR_STE | SYSTICK_CTLR_STIE | SYSTICK_CTLR_STCLK;
}

/*
 * SysTick ISR just counts ticks
 * note - the __attribute__((interrupt)) syntax is crucial!
 */
void SysTick_Handler(void) __attribute__((interrupt));
void SysTick_Handler(void)
{
    // move the compare further ahead in time.
    // as a warning, if more than this length of time
    // passes before triggering, you may miss your
    // interrupt.
    SysTick->CMP += (FUNCONF_SYSTEM_CORE_CLOCK / 1000);

    /* clear IRQ */
    SysTick->SR = 0;

    /* update counter */
    ++g_systickCount;
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

