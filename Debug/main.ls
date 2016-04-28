   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  75                     ; 6 void main(void)
  75                     ; 7 {
  77                     	switch	.text
  78  0000               _main:
  80  0000 89            	pushw	x
  81       00000002      OFST:	set	2
  84                     ; 8 	char x=10;
  86  0001 a60a          	ld	a,#10
  87  0003 6b01          	ld	(OFST-1,sp),a
  88                     ; 9 	char y=10;
  90  0005 a60a          	ld	a,#10
  91  0007 6b02          	ld	(OFST+0,sp),a
  92                     ; 11 	CLK->CKDIVR = 0;
  94  0009 725f50c6      	clr	20678
  95                     ; 12 	disableInterrupts();
  98  000d 9b            sim
 100                     ; 13 	Init_GPIO();
 103  000e cd0000        	call	_Init_GPIO
 105                     ; 14 	Init_TIM1();
 107  0011 cd0000        	call	_Init_TIM1
 109                     ; 15 	Init_Clock();
 111  0014 cd0000        	call	_Init_Clock
 113                     ; 16 	usb_init();
 115  0017 cd0000        	call	_usb_init
 117                     ; 17 	enableInterrupts();
 120  001a 9a            rim
 124  001b 2003          	jra	L53
 125  001d               L33:
 126                     ; 21 		usb_process();
 128  001d cd0000        	call	_usb_process
 130  0020               L53:
 131                     ; 19 	while(usb_ready == 0)
 133  0020 3d00          	tnz	_usb_ready
 134  0022 27f9          	jreq	L33
 135  0024               L14:
 136                     ; 25 		delay(100);
 138  0024 a664          	ld	a,#100
 139  0026 cd0000        	call	_delay
 141                     ; 27 		if(get_random_byte()>127)
 143  0029 cd0000        	call	_get_random_byte
 145  002c a180          	cp	a,#128
 146  002e 2504          	jrult	L54
 147                     ; 29 			x=-x;
 149  0030 0001          	neg	(OFST-1,sp)
 150                     ; 30 			y=-y;
 152  0032 0002          	neg	(OFST+0,sp)
 153  0034               L54:
 154                     ; 33 		data_buffer[0] = 0x00;
 156  0034 3f00          	clr	_data_buffer
 157                     ; 34 		data_buffer[1] = x;
 159  0036 7b01          	ld	a,(OFST-1,sp)
 160  0038 b701          	ld	_data_buffer+1,a
 161                     ; 35 		data_buffer[2] = y;
 163  003a 7b02          	ld	a,(OFST+0,sp)
 164  003c b702          	ld	_data_buffer+2,a
 165                     ; 36 		data_buffer[3] = 0x00;
 167  003e 3f03          	clr	_data_buffer+3
 168                     ; 37 		usb_send_data(&data_buffer[0], 4, 0);
 170  0040 4b00          	push	#0
 171  0042 4b04          	push	#4
 172  0044 ae0000        	ldw	x,#_data_buffer
 173  0047 cd0000        	call	_usb_send_data
 175  004a 85            	popw	x
 177  004b 20d7          	jra	L14
 202                     	xdef	_main
 203                     	xref.b	_usb_ready
 204                     	switch	.ubsct
 205  0000               _data_buffer:
 206  0000 00000000      	ds.b	4
 207                     	xdef	_data_buffer
 208                     	xref	_delay
 209                     	xref	_Init_TIM1
 210                     	xref	_Init_Clock
 211                     	xref	_Init_GPIO
 212                     	xref	_usb_send_data
 213                     	xref	_usb_process
 214                     	xref	_usb_init
 215                     	xref	_get_random_byte
 235                     	end
