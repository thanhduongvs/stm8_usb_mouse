   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _usb_device_descriptor:
  17  0000 12            	dc.b	18
  18  0001 01            	dc.b	1
  19  0002 10            	dc.b	16
  20  0003 01            	dc.b	1
  21  0004 00            	dc.b	0
  22  0005 00            	dc.b	0
  23  0006 00            	dc.b	0
  24  0007 08            	dc.b	8
  25  0008 11            	dc.b	17
  26  0009 22            	dc.b	34
  27  000a 33            	dc.b	51
  28  000b 44            	dc.b	68
  29  000c 55            	dc.b	85
  30  000d 66            	dc.b	102
  31  000e 00            	dc.b	0
  32  000f 00            	dc.b	0
  33  0010 00            	dc.b	0
  34  0011 01            	dc.b	1
  35  0012               _usb_configuration_descriptor:
  36  0012 09            	dc.b	9
  37  0013 02            	dc.b	2
  38  0014 22            	dc.b	34
  39  0015 00            	dc.b	0
  40  0016 01            	dc.b	1
  41  0017 01            	dc.b	1
  42  0018 00            	dc.b	0
  43  0019 80            	dc.b	128
  44  001a 32            	dc.b	50
  45  001b 09            	dc.b	9
  46  001c 04            	dc.b	4
  47  001d 00            	dc.b	0
  48  001e 00            	dc.b	0
  49  001f 01            	dc.b	1
  50  0020 03            	dc.b	3
  51  0021 01            	dc.b	1
  52  0022 02            	dc.b	2
  53  0023 00            	dc.b	0
  54  0024 09            	dc.b	9
  55  0025 21            	dc.b	33
  56  0026 10            	dc.b	16
  57  0027 01            	dc.b	1
  58  0028 21            	dc.b	33
  59  0029 01            	dc.b	1
  60  002a 22            	dc.b	34
  61  002b 34            	dc.b	52
  62  002c 00            	dc.b	0
  63  002d 07            	dc.b	7
  64  002e 05            	dc.b	5
  65  002f 81            	dc.b	129
  66  0030 03            	dc.b	3
  67  0031 04            	dc.b	4
  68  0032 00            	dc.b	0
  69  0033 0a            	dc.b	10
  70  0034               _usb_report_descriptor:
  71  0034 05            	dc.b	5
  72  0035 01            	dc.b	1
  73  0036 09            	dc.b	9
  74  0037 02            	dc.b	2
  75  0038 a1            	dc.b	161
  76  0039 01            	dc.b	1
  77  003a 09            	dc.b	9
  78  003b 01            	dc.b	1
  79  003c a1            	dc.b	161
  80  003d 00            	dc.b	0
  81  003e 05            	dc.b	5
  82  003f 09            	dc.b	9
  83  0040 19            	dc.b	25
  84  0041 01            	dc.b	1
  85  0042 29            	dc.b	41
  86  0043 03            	dc.b	3
  87  0044 15            	dc.b	21
  88  0045 00            	dc.b	0
  89  0046 25            	dc.b	37
  90  0047 01            	dc.b	1
  91  0048 95            	dc.b	149
  92  0049 03            	dc.b	3
  93  004a 75            	dc.b	117
  94  004b 01            	dc.b	1
  95  004c 81            	dc.b	129
  96  004d 02            	dc.b	2
  97  004e 95            	dc.b	149
  98  004f 01            	dc.b	1
  99  0050 75            	dc.b	117
 100  0051 05            	dc.b	5
 101  0052 81            	dc.b	129
 102  0053 03            	dc.b	3
 103  0054 05            	dc.b	5
 104  0055 01            	dc.b	1
 105  0056 09            	dc.b	9
 106  0057 30            	dc.b	48
 107  0058 09            	dc.b	9
 108  0059 31            	dc.b	49
 109  005a 09            	dc.b	9
 110  005b 38            	dc.b	56
 111  005c 15            	dc.b	21
 112  005d 81            	dc.b	129
 113  005e 25            	dc.b	37
 114  005f 7f            	dc.b	127
 115  0060 75            	dc.b	117
 116  0061 08            	dc.b	8
 117  0062 95            	dc.b	149
 118  0063 03            	dc.b	3
 119  0064 81            	dc.b	129
 120  0065 06            	dc.b	6
 121  0066 c0            	dc.b	192
 122  0067 c0            	dc.b	192
 154                     ; 213 void usb_init(void)
 154                     ; 214 {
 156                     	switch	.text
 157  0000               _usb_init:
 161                     ; 215 	usb.state = USB_STATE_IDLE;
 163  0000 3f00          	clr	_usb
 164                     ; 216 	usb.event = USB_EVENT_NO;
 166  0002 3f01          	clr	_usb+1
 167                     ; 217 	usb.device_address = 0;
 169  0004 3f02          	clr	_usb+2
 170                     ; 218 	usb.setup_address  = 0;
 172  0006 3f04          	clr	_usb+4
 173                     ; 219 	usb.tx_is_all = TRUE;
 175  0008 35010028      	mov	_usb+40,#1
 176                     ; 220 	usb_ready = 0;
 178  000c 3f3e          	clr	_usb_ready
 179                     ; 221 	usb_ready_reg = 0;
 181  000e 3f3d          	clr	_usb_ready_reg
 182                     ; 222 }
 185  0010 81            	ret
 228                     ; 224 void usb_send_nack(void)
 228                     ; 225 {
 229                     	switch	.text
 230  0011               _usb_send_nack:
 232  0011 89            	pushw	x
 233       00000002      OFST:	set	2
 236                     ; 228 	GPIOC->ODR = 0x40;
 238  0012 3540500a      	mov	20490,#64
 239                     ; 229 	GPIOC->CR1 = 0xFF;
 241  0016 35ff500d      	mov	20493,#255
 242                     ; 230 	GPIOC->CR2 = 0xFF;
 244  001a 35ff500e      	mov	20494,#255
 245                     ; 231 	GPIOC->DDR = 0xFF;
 247  001e 35ff500c      	mov	20492,#255
 248                     ; 233 	data[0] = 0x80;
 250  0022 a680          	ld	a,#128
 251  0024 6b01          	ld	(OFST-1,sp),a
 252                     ; 234 	data[1] = USB_PID_NACK;
 254  0026 a65a          	ld	a,#90
 255  0028 6b02          	ld	(OFST+0,sp),a
 256                     ; 236 	usb_tx_count = 2;
 258  002a 3502003f      	mov	_usb_tx_count,#2
 259                     ; 237 	usb_tx_buffer_pointer = &data[0];
 261  002e 96            	ldw	x,sp
 262  002f 1c0001        	addw	x,#OFST-1
 263  0032 bf2a          	ldw	_usb_tx_buffer_pointer,x
 264                     ; 239 	usb_tx();
 266  0034 cd0000        	call	_usb_tx
 268                     ; 241 	nop();
 271  0037 9d            nop
 273                     ; 242 	nop();
 277  0038 9d            nop
 279                     ; 243 	nop();
 283  0039 9d            nop
 285                     ; 244 	nop();
 289  003a 9d            nop
 291                     ; 245 	nop();
 295  003b 9d            nop
 297                     ; 247 	GPIOC->CR2 = 0x00;
 300  003c 725f500e      	clr	20494
 301                     ; 248 	GPIOC->CR1 = 0x00;
 303  0040 725f500d      	clr	20493
 304                     ; 249 	GPIOC->DDR = 0x3F;
 306  0044 353f500c      	mov	20492,#63
 307                     ; 250 }
 310  0048 85            	popw	x
 311  0049 81            	ret
 314                     	bsct
 315  0000               _count:
 316  0000 00            	dc.b	0
 409                     ; 315 void usb_rx_ok(void)
 409                     ; 316 {
 410                     	switch	.text
 411  004a               _usb_rx_ok:
 413  004a 89            	pushw	x
 414       00000002      OFST:	set	2
 417                     ; 317 	switch (usb_rx_buffer[1])
 419  004b b62d          	ld	a,_usb_rx_buffer+1
 421                     ; 396 			break;
 422  004d a02d          	sub	a,#45
 423  004f 272a          	jreq	L73
 424  0051 a01e          	sub	a,#30
 425  0053 2603          	jrne	L21
 426  0055 cc018d        	jp	L75
 427  0058               L21:
 428  0058 a00f          	sub	a,#15
 429  005a 2603          	jrne	L41
 430  005c cc01cf        	jp	L521
 431  005f               L41:
 432  005f a00f          	sub	a,#15
 433  0061 2728          	jreq	L34
 434  0063 a05a          	sub	a,#90
 435  0065 2603          	jrne	L61
 436  0067 cc00ec        	jp	L74
 437  006a               L61:
 438  006a a00f          	sub	a,#15
 439  006c 2603          	jrne	L02
 440  006e cc01cf        	jp	L521
 441  0071               L02:
 442  0071 a00f          	sub	a,#15
 443  0073 270e          	jreq	L14
 444  0075               L76:
 445                     ; 395 			usb.state = USB_STATE_IDLE;
 447  0075 3f00          	clr	_usb
 448                     ; 396 			break;
 450  0077 accf01cf      	jpf	L521
 451  007b               L73:
 452                     ; 321 			usb.state = USB_STATE_SETUP;
 454  007b 35010000      	mov	_usb,#1
 455                     ; 322 			break;
 457  007f accf01cf      	jpf	L521
 458  0083               L14:
 459                     ; 327 			usb.state = USB_STATE_OUT;
 461  0083 35030000      	mov	_usb,#3
 462                     ; 328 			break;
 464  0087 accf01cf      	jpf	L521
 465  008b               L34:
 466                     ; 333 			if((usb_rx_buffer[2]&0x7F)==usb.device_address)
 468  008b b62e          	ld	a,_usb_rx_buffer+2
 469  008d a47f          	and	a,#127
 470  008f b102          	cp	a,_usb+2
 471  0091 2703          	jreq	L22
 472  0093 cc01cf        	jp	L521
 473  0096               L22:
 474                     ; 335 				if(usb.setup_address!=0)
 476  0096 3d04          	tnz	_usb+4
 477  0098 2703          	jreq	L131
 478                     ; 337 					usb.device_address=usb.setup_address;
 480  009a 450402        	mov	_usb+2,_usb+4
 481  009d               L131:
 482                     ; 339 				if(usb_ready_reg==1)			
 484  009d b63d          	ld	a,_usb_ready_reg
 485  009f a101          	cp	a,#1
 486  00a1 2604          	jrne	L331
 487                     ; 340 					usb_ready=1;
 489  00a3 3501003e      	mov	_usb_ready,#1
 490  00a7               L331:
 491                     ; 341 				if (usb.event == USB_EVENT_READY_DATA_IN)
 493  00a7 b601          	ld	a,_usb+1
 494  00a9 a102          	cp	a,#2
 495  00ab 2638          	jrne	L531
 496                     ; 286 	GPIOC->ODR = 0x40;
 499  00ad 3540500a      	mov	20490,#64
 500                     ; 287 	GPIOC->CR1 = 0xFF;
 502  00b1 35ff500d      	mov	20493,#255
 503                     ; 288 	GPIOC->CR2 = 0xFF;
 505  00b5 35ff500e      	mov	20494,#255
 506                     ; 289 	GPIOC->DDR = 0xFF;
 508  00b9 35ff500c      	mov	20492,#255
 509                     ; 291 	usb_tx_count = usb.tx_lenght;
 511  00bd 45273f        	mov	_usb_tx_count,_usb+39
 512                     ; 292 	usb_tx_buffer_pointer = &usb.tx_buffer[0];
 514  00c0 ae0017        	ldw	x,#_usb+23
 515  00c3 bf2a          	ldw	_usb_tx_buffer_pointer,x
 516                     ; 294 	usb_tx();
 518  00c5 cd0000        	call	_usb_tx
 520                     ; 296 	nop();
 523  00c8 9d            nop
 525                     ; 297 	nop();
 529  00c9 9d            nop
 531                     ; 298 	nop();
 535  00ca 9d            nop
 537                     ; 299 	nop();
 541  00cb 9d            nop
 543                     ; 300 	nop();
 547  00cc 9d            nop
 549                     ; 302 	GPIOC->CR2 = 0x00;
 552  00cd 725f500e      	clr	20494
 553                     ; 303 	GPIOC->CR1 = 0x00;
 555  00d1 725f500d      	clr	20493
 556                     ; 304 	GPIOC->DDR = 0x3F;
 558  00d5 353f500c      	mov	20492,#63
 559                     ; 344 					usb.state = USB_STATE_IN;
 562  00d9 35020000      	mov	_usb,#2
 563                     ; 345 					usb.event = USB_EVENT_WAIT_DATA_IN;
 565  00dd 35030001      	mov	_usb+1,#3
 567  00e1 accf01cf      	jpf	L521
 568  00e5               L531:
 569                     ; 349 					usb_send_nack();
 571  00e5 cd0011        	call	_usb_send_nack
 573  00e8 accf01cf      	jpf	L521
 574  00ec               L74:
 575                     ; 358 			if (usb.state == USB_STATE_SETUP)
 577  00ec b600          	ld	a,_usb
 578  00ee a101          	cp	a,#1
 579  00f0 2654          	jrne	L141
 580                     ; 256 	GPIOC->ODR = 0x40;
 583  00f2 3540500a      	mov	20490,#64
 584                     ; 257 	GPIOC->CR1 = 0xFF;
 586  00f6 35ff500d      	mov	20493,#255
 587                     ; 258 	GPIOC->CR2 = 0xFF;
 589  00fa 35ff500e      	mov	20494,#255
 590                     ; 259 	GPIOC->DDR = 0xFF;
 592  00fe 35ff500c      	mov	20492,#255
 593                     ; 261 	data[0] = 0x80;
 595  0102 a680          	ld	a,#128
 596  0104 6b01          	ld	(OFST-1,sp),a
 597                     ; 262 	data[1] = USB_PID_ACK;
 599  0106 a6d2          	ld	a,#210
 600  0108 6b02          	ld	(OFST+0,sp),a
 601                     ; 264 	usb_tx_count = 2;
 603  010a 3502003f      	mov	_usb_tx_count,#2
 604                     ; 265 	usb_tx_buffer_pointer = &data[0];
 606  010e 96            	ldw	x,sp
 607  010f 1c0001        	addw	x,#OFST-1
 608  0112 bf2a          	ldw	_usb_tx_buffer_pointer,x
 609                     ; 268 	usb_tx();
 611  0114 cd0000        	call	_usb_tx
 613                     ; 270 	nop();
 616  0117 9d            nop
 618                     ; 271 	nop();
 622  0118 9d            nop
 624                     ; 272 	nop();
 628  0119 9d            nop
 630                     ; 273 	nop();
 634  011a 9d            nop
 636                     ; 274 	nop();
 640  011b 9d            nop
 642                     ; 276 	GPIOC->CR2 = 0x00;
 645  011c 725f500e      	clr	20494
 646                     ; 277 	GPIOC->CR1 = 0x00;
 648  0120 725f500d      	clr	20493
 649                     ; 278 	GPIOC->DDR = 0x7F;
 651  0124 357f500c      	mov	20492,#127
 652                     ; 279 	GPIOC->DDR = 0x3F;
 654  0128 353f500c      	mov	20492,#63
 655                     ; 309 	uint8_t index = 0;
 659                     ; 311 	for (index = 0; index < 16; index++)
 661  012c 0f02          	clr	(OFST+0,sp)
 662  012e               L341:
 663                     ; 312 		usb.rx_buffer[index] = usb_rx_buffer[index];
 665  012e 7b02          	ld	a,(OFST+0,sp)
 666  0130 5f            	clrw	x
 667  0131 97            	ld	xl,a
 668  0132 e62c          	ld	a,(_usb_rx_buffer,x)
 669  0134 e706          	ld	(_usb+6,x),a
 670                     ; 311 	for (index = 0; index < 16; index++)
 672  0136 0c02          	inc	(OFST+0,sp)
 675  0138 7b02          	ld	a,(OFST+0,sp)
 676  013a a110          	cp	a,#16
 677  013c 25f0          	jrult	L341
 678                     ; 362 				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
 681  013e 35010001      	mov	_usb+1,#1
 683  0142 accf01cf      	jpf	L521
 684  0146               L141:
 685                     ; 364 			else if (usb.state == USB_STATE_OUT)
 687  0146 b600          	ld	a,_usb
 688  0148 a103          	cp	a,#3
 689  014a 2703          	jreq	L42
 690  014c cc01cf        	jp	L521
 691  014f               L42:
 692                     ; 256 	GPIOC->ODR = 0x40;
 695  014f 3540500a      	mov	20490,#64
 696                     ; 257 	GPIOC->CR1 = 0xFF;
 698  0153 35ff500d      	mov	20493,#255
 699                     ; 258 	GPIOC->CR2 = 0xFF;
 701  0157 35ff500e      	mov	20494,#255
 702                     ; 259 	GPIOC->DDR = 0xFF;
 704  015b 35ff500c      	mov	20492,#255
 705                     ; 261 	data[0] = 0x80;
 707  015f a680          	ld	a,#128
 708  0161 6b01          	ld	(OFST-1,sp),a
 709                     ; 262 	data[1] = USB_PID_ACK;
 711  0163 a6d2          	ld	a,#210
 712  0165 6b02          	ld	(OFST+0,sp),a
 713                     ; 264 	usb_tx_count = 2;
 715  0167 3502003f      	mov	_usb_tx_count,#2
 716                     ; 265 	usb_tx_buffer_pointer = &data[0];
 718  016b 96            	ldw	x,sp
 719  016c 1c0001        	addw	x,#OFST-1
 720  016f bf2a          	ldw	_usb_tx_buffer_pointer,x
 721                     ; 268 	usb_tx();
 723  0171 cd0000        	call	_usb_tx
 725                     ; 270 	nop();
 728  0174 9d            nop
 730                     ; 271 	nop();
 734  0175 9d            nop
 736                     ; 272 	nop();
 740  0176 9d            nop
 742                     ; 273 	nop();
 746  0177 9d            nop
 748                     ; 274 	nop();
 752  0178 9d            nop
 754                     ; 276 	GPIOC->CR2 = 0x00;
 757  0179 725f500e      	clr	20494
 758                     ; 277 	GPIOC->CR1 = 0x00;
 760  017d 725f500d      	clr	20493
 761                     ; 278 	GPIOC->DDR = 0x7F;
 763  0181 357f500c      	mov	20492,#127
 764                     ; 279 	GPIOC->DDR = 0x3F;
 766  0185 353f500c      	mov	20492,#63
 767                     ; 367 				usb.event = USB_EVENT_NO;
 770  0189 3f01          	clr	_usb+1
 771  018b 2042          	jra	L521
 772  018d               L75:
 773                     ; 374 			if (usb.state == USB_STATE_OUT)
 775  018d b600          	ld	a,_usb
 776  018f a103          	cp	a,#3
 777  0191 263c          	jrne	L521
 778                     ; 256 	GPIOC->ODR = 0x40;
 781  0193 3540500a      	mov	20490,#64
 782                     ; 257 	GPIOC->CR1 = 0xFF;
 784  0197 35ff500d      	mov	20493,#255
 785                     ; 258 	GPIOC->CR2 = 0xFF;
 787  019b 35ff500e      	mov	20494,#255
 788                     ; 259 	GPIOC->DDR = 0xFF;
 790  019f 35ff500c      	mov	20492,#255
 791                     ; 261 	data[0] = 0x80;
 793  01a3 a680          	ld	a,#128
 794  01a5 6b01          	ld	(OFST-1,sp),a
 795                     ; 262 	data[1] = USB_PID_ACK;
 797  01a7 a6d2          	ld	a,#210
 798  01a9 6b02          	ld	(OFST+0,sp),a
 799                     ; 264 	usb_tx_count = 2;
 801  01ab 3502003f      	mov	_usb_tx_count,#2
 802                     ; 265 	usb_tx_buffer_pointer = &data[0];
 804  01af 96            	ldw	x,sp
 805  01b0 1c0001        	addw	x,#OFST-1
 806  01b3 bf2a          	ldw	_usb_tx_buffer_pointer,x
 807                     ; 268 	usb_tx();
 809  01b5 cd0000        	call	_usb_tx
 811                     ; 270 	nop();
 814  01b8 9d            nop
 816                     ; 271 	nop();
 820  01b9 9d            nop
 822                     ; 272 	nop();
 826  01ba 9d            nop
 828                     ; 273 	nop();
 832  01bb 9d            nop
 834                     ; 274 	nop();
 838  01bc 9d            nop
 840                     ; 276 	GPIOC->CR2 = 0x00;
 843  01bd 725f500e      	clr	20494
 844                     ; 277 	GPIOC->CR1 = 0x00;
 846  01c1 725f500d      	clr	20493
 847                     ; 278 	GPIOC->DDR = 0x7F;
 849  01c5 357f500c      	mov	20492,#127
 850                     ; 279 	GPIOC->DDR = 0x3F;
 852  01c9 353f500c      	mov	20492,#63
 853                     ; 377 				usb.event = USB_EVENT_NO;
 856  01cd 3f01          	clr	_usb+1
 857  01cf               L521:
 858                     ; 399 }
 861  01cf 85            	popw	x
 862  01d0 81            	ret
 933                     ; 401 void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
 933                     ; 402 {
 934                     	switch	.text
 935  01d1               _usb_calc_crc16:
 937  01d1 89            	pushw	x
 938  01d2 5204          	subw	sp,#4
 939       00000004      OFST:	set	4
 942                     ; 403 	uint16_t crc = 0xFFFF;
 944  01d4 aeffff        	ldw	x,#65535
 945  01d7 1f03          	ldw	(OFST-1,sp),x
 946                     ; 407 	for (index = 0; index < lenght; index++)
 948  01d9 0f01          	clr	(OFST-3,sp)
 950  01db 2041          	jra	L122
 951  01dd               L512:
 952                     ; 409 		crc ^= *buffer++;
 954  01dd 1e05          	ldw	x,(OFST+1,sp)
 955  01df 1c0001        	addw	x,#1
 956  01e2 1f05          	ldw	(OFST+1,sp),x
 957  01e4 1d0001        	subw	x,#1
 958  01e7 f6            	ld	a,(x)
 959  01e8 5f            	clrw	x
 960  01e9 97            	ld	xl,a
 961  01ea 01            	rrwa	x,a
 962  01eb 1804          	xor	a,(OFST+0,sp)
 963  01ed 01            	rrwa	x,a
 964  01ee 1803          	xor	a,(OFST-1,sp)
 965  01f0 01            	rrwa	x,a
 966  01f1 1f03          	ldw	(OFST-1,sp),x
 967                     ; 411 		for (i = 8; i--;)
 969  01f3 a608          	ld	a,#8
 970  01f5 6b02          	ld	(OFST-2,sp),a
 972  01f7 201c          	jra	L132
 973  01f9               L522:
 974                     ; 413 			if ((crc & BIT(0)) != 0)
 976  01f9 7b04          	ld	a,(OFST+0,sp)
 977  01fb a501          	bcp	a,#1
 978  01fd 2712          	jreq	L532
 979                     ; 415 				crc >>= 1;
 981  01ff 0403          	srl	(OFST-1,sp)
 982  0201 0604          	rrc	(OFST+0,sp)
 983                     ; 416 				crc ^= 0xA001;
 985  0203 7b04          	ld	a,(OFST+0,sp)
 986  0205 a801          	xor	a,#1
 987  0207 6b04          	ld	(OFST+0,sp),a
 988  0209 7b03          	ld	a,(OFST-1,sp)
 989  020b a8a0          	xor	a,#160
 990  020d 6b03          	ld	(OFST-1,sp),a
 992  020f 2004          	jra	L132
 993  0211               L532:
 994                     ; 420 				crc >>= 1;
 996  0211 0403          	srl	(OFST-1,sp)
 997  0213 0604          	rrc	(OFST+0,sp)
 998  0215               L132:
 999                     ; 411 		for (i = 8; i--;)
1001  0215 7b02          	ld	a,(OFST-2,sp)
1002  0217 0a02          	dec	(OFST-2,sp)
1003  0219 4d            	tnz	a
1004  021a 26dd          	jrne	L522
1005                     ; 407 	for (index = 0; index < lenght; index++)
1007  021c 0c01          	inc	(OFST-3,sp)
1008  021e               L122:
1011  021e 7b01          	ld	a,(OFST-3,sp)
1012  0220 1109          	cp	a,(OFST+5,sp)
1013  0222 25b9          	jrult	L512
1014                     ; 425 	crc = ~crc;
1016  0224 1e03          	ldw	x,(OFST-1,sp)
1017  0226 53            	cplw	x
1018  0227 1f03          	ldw	(OFST-1,sp),x
1019                     ; 427 	*buffer++ = (uint8_t) crc;
1021  0229 7b04          	ld	a,(OFST+0,sp)
1022  022b 1e05          	ldw	x,(OFST+1,sp)
1023  022d 1c0001        	addw	x,#1
1024  0230 1f05          	ldw	(OFST+1,sp),x
1025  0232 1d0001        	subw	x,#1
1026  0235 f7            	ld	(x),a
1027                     ; 428 	*buffer = (uint8_t) (crc >> 8);
1029  0236 7b03          	ld	a,(OFST-1,sp)
1030  0238 1e05          	ldw	x,(OFST+1,sp)
1031  023a f7            	ld	(x),a
1032                     ; 429 }
1035  023b 5b06          	addw	sp,#6
1036  023d 81            	ret
1101                     ; 431 void usb_send_data(uint8_t * buffer, uint8_t lenght, uint8_t mode)
1101                     ; 432 {
1102                     	switch	.text
1103  023e               _usb_send_data:
1105  023e 89            	pushw	x
1106  023f 88            	push	a
1107       00000001      OFST:	set	1
1110                     ; 435 	if(mode)
1112  0240 0d07          	tnz	(OFST+6,sp)
1113  0242 2603          	jrne	L23
1114  0244 cc02f0        	jp	L772
1115  0247               L23:
1116                     ; 436 		data_sync = USB_PID_DATA1;
1118  0247 354b003c      	mov	_data_sync,#75
1119  024b acf002f0      	jpf	L772
1120  024f               L572:
1121                     ; 440 		usb.tx_buffer[0] = 0x80;
1123  024f 35800017      	mov	_usb+23,#128
1124                     ; 441 		usb.tx_buffer[1] = data_sync;
1126  0253 453c18        	mov	_usb+24,_data_sync
1127                     ; 443 		if (lenght >= 8)
1129  0256 7b06          	ld	a,(OFST+5,sp)
1130  0258 a108          	cp	a,#8
1131  025a 2542          	jrult	L303
1132                     ; 445 			usb.tx_lenght = 12;
1134  025c 350c0027      	mov	_usb+39,#12
1135                     ; 447 			for (index = 2; index < 10; index++)
1137  0260 a602          	ld	a,#2
1138  0262 6b01          	ld	(OFST+0,sp),a
1139  0264               L503:
1140                     ; 448 				usb.tx_buffer[index] = *buffer++;
1142  0264 7b01          	ld	a,(OFST+0,sp)
1143  0266 5f            	clrw	x
1144  0267 97            	ld	xl,a
1145  0268 1602          	ldw	y,(OFST+1,sp)
1146  026a 72a90001      	addw	y,#1
1147  026e 1702          	ldw	(OFST+1,sp),y
1148  0270 72a20001      	subw	y,#1
1149  0274 90f6          	ld	a,(y)
1150  0276 e717          	ld	(_usb+23,x),a
1151                     ; 447 			for (index = 2; index < 10; index++)
1153  0278 0c01          	inc	(OFST+0,sp)
1156  027a 7b01          	ld	a,(OFST+0,sp)
1157  027c a10a          	cp	a,#10
1158  027e 25e4          	jrult	L503
1159                     ; 449 			lenght -= 8;
1161  0280 7b06          	ld	a,(OFST+5,sp)
1162  0282 a008          	sub	a,#8
1163  0284 6b06          	ld	(OFST+5,sp),a
1165  0286               L313:
1166                     ; 460 		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));
1168  0286 b627          	ld	a,_usb+39
1169  0288 a004          	sub	a,#4
1170  028a 88            	push	a
1171  028b ae0019        	ldw	x,#_usb+25
1172  028e cd01d1        	call	_usb_calc_crc16
1174  0291 84            	pop	a
1175                     ; 463 		if (data_sync == USB_PID_DATA1)
1177  0292 b63c          	ld	a,_data_sync
1178  0294 a14b          	cp	a,#75
1179  0296 2642          	jrne	L523
1180                     ; 464 			data_sync = USB_PID_DATA0;
1182  0298 35c3003c      	mov	_data_sync,#195
1184  029c 2040          	jra	L723
1185  029e               L303:
1186                     ; 453 			usb.tx_lenght = (uint8_t) (4 + lenght);
1188  029e 7b06          	ld	a,(OFST+5,sp)
1189  02a0 ab04          	add	a,#4
1190  02a2 b727          	ld	_usb+39,a
1191                     ; 454 			for (index = 2; index < 2 + lenght; index++)
1193  02a4 a602          	ld	a,#2
1194  02a6 6b01          	ld	(OFST+0,sp),a
1196  02a8 2016          	jra	L123
1197  02aa               L513:
1198                     ; 455 				usb.tx_buffer[index] = *buffer++;
1200  02aa 7b01          	ld	a,(OFST+0,sp)
1201  02ac 5f            	clrw	x
1202  02ad 97            	ld	xl,a
1203  02ae 1602          	ldw	y,(OFST+1,sp)
1204  02b0 72a90001      	addw	y,#1
1205  02b4 1702          	ldw	(OFST+1,sp),y
1206  02b6 72a20001      	subw	y,#1
1207  02ba 90f6          	ld	a,(y)
1208  02bc e717          	ld	(_usb+23,x),a
1209                     ; 454 			for (index = 2; index < 2 + lenght; index++)
1211  02be 0c01          	inc	(OFST+0,sp)
1212  02c0               L123:
1215  02c0 9c            	rvf
1216  02c1 7b01          	ld	a,(OFST+0,sp)
1217  02c3 5f            	clrw	x
1218  02c4 97            	ld	xl,a
1219  02c5 7b06          	ld	a,(OFST+5,sp)
1220  02c7 905f          	clrw	y
1221  02c9 9097          	ld	yl,a
1222  02cb 905c          	incw	y
1223  02cd 905c          	incw	y
1224  02cf bf00          	ldw	c_x,x
1225  02d1 90b300        	cpw	y,c_x
1226  02d4 2cd4          	jrsgt	L513
1227                     ; 456 			lenght = 0;
1229  02d6 0f06          	clr	(OFST+5,sp)
1230  02d8 20ac          	jra	L313
1231  02da               L523:
1232                     ; 466 			data_sync = USB_PID_DATA1;
1234  02da 354b003c      	mov	_data_sync,#75
1235  02de               L723:
1236                     ; 469 		usb.event = USB_EVENT_READY_DATA_IN;
1238  02de 35020001      	mov	_usb+1,#2
1240  02e2 2006          	jra	L533
1241  02e4               L133:
1242                     ; 475 			if (usb.event == USB_EVENT_WAIT_DATA_IN)
1244  02e4 b601          	ld	a,_usb+1
1245  02e6 a103          	cp	a,#3
1246  02e8 2706          	jreq	L772
1247                     ; 476 				break;
1249  02ea               L533:
1250                     ; 472 		while (usb.event == USB_EVENT_READY_DATA_IN)
1252  02ea b601          	ld	a,_usb+1
1253  02ec a102          	cp	a,#2
1254  02ee 27f4          	jreq	L133
1255  02f0               L772:
1256                     ; 438 	while (lenght > 0)
1258  02f0 0d06          	tnz	(OFST+5,sp)
1259  02f2 2703          	jreq	L43
1260  02f4 cc024f        	jp	L572
1261  02f7               L43:
1262                     ; 479 }
1265  02f7 5b03          	addw	sp,#3
1266  02f9 81            	ret
1290                     ; 481 void usb_send_null_data(void)
1290                     ; 482 {
1291                     	switch	.text
1292  02fa               _usb_send_null_data:
1296                     ; 483 	usb.tx_lenght = 4;
1298  02fa 35040027      	mov	_usb+39,#4
1299                     ; 484 	usb.tx_buffer[0] = 0x80;
1301  02fe 35800017      	mov	_usb+23,#128
1302                     ; 485 	usb.tx_buffer[1] = USB_PID_DATA1;
1304  0302 354b0018      	mov	_usb+24,#75
1305                     ; 486 	usb.tx_buffer[2] = 0;
1307  0306 3f19          	clr	_usb+25
1308                     ; 487 	usb.tx_buffer[3] = 0;
1310  0308 3f1a          	clr	_usb+26
1311                     ; 489 	usb.event = USB_EVENT_READY_DATA_IN;
1313  030a 35020001      	mov	_usb+1,#2
1314                     ; 490 }
1317  030e 81            	ret
1341                     ; 492 void usb_send_stall(void)
1341                     ; 493 {
1342                     	switch	.text
1343  030f               _usb_send_stall:
1347                     ; 494 	usb.tx_lenght = 2;
1349  030f 35020027      	mov	_usb+39,#2
1350                     ; 495 	usb.tx_buffer[0] = 0x80;
1352  0313 35800017      	mov	_usb+23,#128
1353                     ; 496 	usb.tx_buffer[1] = USB_PID_STALL;
1355  0317 351e0018      	mov	_usb+24,#30
1356                     ; 498 	usb.event = USB_EVENT_READY_DATA_IN;
1358  031b 35020001      	mov	_usb+1,#2
1359                     ; 499 }
1362  031f 81            	ret
1365                     	bsct
1366  0001               _counter_a:
1367  0001 00            	dc.b	0
1368  0002               _counter_b:
1369  0002 00            	dc.b	0
1370  0003               _counter_all:
1371  0003 00            	dc.b	0
1372  0004               _tx_counter:
1373  0004 00            	dc.b	0
1402                     ; 507 void usb_process(void)
1402                     ; 508 {
1403                     	switch	.text
1404  0320               _usb_process:
1408                     ; 509 	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
1410  0320 b601          	ld	a,_usb+1
1411  0322 a101          	cp	a,#1
1412  0324 2703          	jreq	L44
1413  0326 cc03b5        	jp	L124
1414  0329               L44:
1415                     ; 511 		switch (usb.rx_buffer[2])
1417  0329 b608          	ld	a,_usb+8
1419                     ; 575 				break;
1420  032b 4d            	tnz	a
1421  032c 2750          	jreq	L373
1422  032e a021          	sub	a,#33
1423  0330 2603cc03b2    	jreq	L704
1424  0335 a05f          	sub	a,#95
1425  0337 2705          	jreq	L363
1426  0339 4a            	dec	a
1427  033a 275d          	jreq	L104
1428  033c 2077          	jra	L124
1429  033e               L363:
1430                     ; 515 				switch (usb.rx_buffer[3])
1432  033e b609          	ld	a,_usb+9
1433  0340 a106          	cp	a,#6
1434  0342 2671          	jrne	L124
1437  0344               L563:
1438                     ; 519 						switch (usb.rx_buffer[5])
1440  0344 b60b          	ld	a,_usb+11
1442                     ; 532 								break;
1443  0346 4a            	dec	a
1444  0347 2705          	jreq	L763
1445  0349 4a            	dec	a
1446  034a 270f          	jreq	L173
1447  034c 2067          	jra	L124
1448  034e               L763:
1449                     ; 523 								usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor), 1);
1451  034e 4b01          	push	#1
1452  0350 4b12          	push	#18
1453  0352 ae0000        	ldw	x,#_usb_device_descriptor
1454  0355 cd023e        	call	_usb_send_data
1456  0358 85            	popw	x
1457                     ; 524 								break;
1459  0359 205a          	jra	L124
1460  035b               L173:
1461                     ; 528 								if(usb.rx_buffer[8]<ARRAY_LENGHT(usb_configuration_descriptor))
1463  035b b60e          	ld	a,_usb+14
1464  035d a122          	cp	a,#34
1465  035f 240e          	jruge	L734
1466                     ; 529 									usb_send_data(&usb_configuration_descriptor[0],usb.rx_buffer[8], 1);
1468  0361 4b01          	push	#1
1469  0363 3b000e        	push	_usb+14
1470  0366 ae0012        	ldw	x,#_usb_configuration_descriptor
1471  0369 cd023e        	call	_usb_send_data
1473  036c 85            	popw	x
1475  036d 2046          	jra	L124
1476  036f               L734:
1477                     ; 531 									usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor), 1);
1479  036f 4b01          	push	#1
1480  0371 4b22          	push	#34
1481  0373 ae0012        	ldw	x,#_usb_configuration_descriptor
1482  0376 cd023e        	call	_usb_send_data
1484  0379 85            	popw	x
1485  037a 2039          	jra	L124
1486  037c               L534:
1487                     ; 535 						break;
1489  037c 2037          	jra	L124
1490  037e               L373:
1491                     ; 542 				switch (usb.rx_buffer[3])
1493  037e b609          	ld	a,_usb+9
1495                     ; 553 						break;
1496  0380 a005          	sub	a,#5
1497  0382 2706          	jreq	L573
1498  0384 a004          	sub	a,#4
1499  0386 270a          	jreq	L773
1500  0388 202b          	jra	L124
1501  038a               L573:
1502                     ; 546 						usb.setup_address = usb.rx_buffer[4];
1504  038a 450a04        	mov	_usb+4,_usb+10
1505                     ; 547 						usb_send_null_data();
1507  038d cd02fa        	call	_usb_send_null_data
1509                     ; 548 						break;
1511  0390 2023          	jra	L124
1512  0392               L773:
1513                     ; 552 						usb_send_null_data();
1515  0392 cd02fa        	call	_usb_send_null_data
1517                     ; 553 						break;
1519  0395 201e          	jra	L124
1520  0397               L544:
1521                     ; 556 				break;
1523  0397 201c          	jra	L124
1524  0399               L104:
1525                     ; 560 				switch (usb.rx_buffer[3])
1527  0399 b609          	ld	a,_usb+9
1528  039b a106          	cp	a,#6
1529  039d 2616          	jrne	L124
1532  039f               L304:
1533                     ; 564 						usb_send_data(&usb_report_descriptor[0], ARRAY_LENGHT(usb_report_descriptor), 1);
1535  039f 4b01          	push	#1
1536  03a1 4b34          	push	#52
1537  03a3 ae0034        	ldw	x,#_usb_report_descriptor
1538  03a6 cd023e        	call	_usb_send_data
1540  03a9 85            	popw	x
1541                     ; 565 						usb_ready_reg=1;
1543  03aa 3501003d      	mov	_usb_ready_reg,#1
1544                     ; 566 						break;
1546  03ae 2005          	jra	L124
1547  03b0               L504:
1548                     ; 568 					default: break;
1550  03b0 2003          	jra	L124
1551  03b2               L704:
1552                     ; 574 				usb_send_stall();
1554  03b2 cd030f        	call	_usb_send_stall
1556                     ; 575 				break;
1558  03b5               L524:
1559  03b5               L124:
1560                     ; 579 }
1563  03b5 81            	ret
1828                     	xdef	_tx_counter
1829                     	xdef	_counter_all
1830                     	xdef	_counter_b
1831                     	xdef	_counter_a
1832                     	xdef	_usb_send_stall
1833                     	xdef	_usb_send_null_data
1834                     	xdef	_usb_calc_crc16
1835                     	xdef	_usb_rx_ok
1836                     	xdef	_count
1837                     	xdef	_usb_send_nack
1838                     	switch	.ubsct
1839  0000               _usb:
1840  0000 000000000000  	ds.b	41
1841                     	xdef	_usb
1842                     	xdef	_usb_report_descriptor
1843                     	xdef	_usb_configuration_descriptor
1844                     	xdef	_usb_device_descriptor
1845  0029               _usb_rx_count:
1846  0029 00            	ds.b	1
1847                     	xdef	_usb_rx_count
1848  002a               _usb_tx_buffer_pointer:
1849  002a 0000          	ds.b	2
1850                     	xdef	_usb_tx_buffer_pointer
1851  002c               _usb_rx_buffer:
1852  002c 000000000000  	ds.b	16
1853                     	xdef	_usb_rx_buffer
1854  003c               _data_sync:
1855  003c 00            	ds.b	1
1856                     	xdef	_data_sync
1857  003d               _usb_ready_reg:
1858  003d 00            	ds.b	1
1859                     	xdef	_usb_ready_reg
1860  003e               _usb_ready:
1861  003e 00            	ds.b	1
1862                     	xdef	_usb_ready
1863                     	xref	_usb_tx
1864                     	xdef	_usb_send_data
1865                     	xdef	_usb_process
1866                     	xdef	_usb_init
1867  003f               _usb_tx_count:
1868  003f 00            	ds.b	1
1869                     	xdef	_usb_tx_count
1870                     	xref.b	c_x
1890                     	end
