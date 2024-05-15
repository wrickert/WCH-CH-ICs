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

}

void usb_handle_user_in_request( struct usb_endpoint * e, uint8_t * scratchpad, int endp, uint32_t sendtok, struct rv003usb_internal * ist )
{
	if( endp == 1 )
	{
		// Mouse (4 bytes)
		static uint8_t tsajoystick[4] = { 0x00 };
		usb_send_data( tsajoystick, 8, 0, sendtok );
      if(!funDigitalRead(PD5))
		{
			tsajoystick[4] = 0xE9; // 0x05 = "b"; 0x53 = NUMLOCK; 0x39 = CAPSLOCK;
		}
		else
		{
			tsajoystick[4] = 0;
		}

		//usb_send_data( tsajoystick, 4, 0, sendtok );
	}
	else if( endp == 2 )
	{
		// Keyboard (8 bytes)
		static uint8_t tsajoystick[8] = { 0x00 };
		usb_send_data( tsajoystick, 8, 0, sendtok );


      if(!funDigitalRead(PD6))
		{
			tsajoystick[4] = 0xE9; // 0x05 = "b"; 0x53 = NUMLOCK; 0x39 = CAPSLOCK;
		}
      else if(!funDigitalRead(PD7))
		{
			tsajoystick[4] = 0x07; // 0x05 = "b"; 0x53 = NUMLOCK; 0x39 = CAPSLOCK;
		}
      else if(!funDigitalRead(PA1))
		{
			tsajoystick[4] = 0x08; // 0x05 = "b"; 0x53 = NUMLOCK; 0x39 = CAPSLOCK;
		}
		else
		{
			tsajoystick[4] = 0;
		}
	}
	else
	{
		// If it's a control transfer, empty it.
		usb_send_empty( sendtok );
	}
}


