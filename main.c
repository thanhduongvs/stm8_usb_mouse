#include "main.h"

uint8_t data_buffer[4];
extern uint8_t usb_ready;

void main(void)
{
	char x=10;
	char y=10;
	
	CLK->CKDIVR = 0;
	disableInterrupts();
	Init_GPIO();
	Init_TIM1();
	Init_Clock();
	usb_init();
	enableInterrupts();

	while(usb_ready == 0)
	{
		usb_process();
	}
	while(1)
	{
		delay(100);
		
		if(get_random_byte()>127)
		{
			x=-x;
			y=-y;
		}
		
		data_buffer[0] = 0x00;
		data_buffer[1] = x;
		data_buffer[2] = y;
		data_buffer[3] = 0x00;
		usb_send_data(&data_buffer[0], 4, 0);
	}
}
