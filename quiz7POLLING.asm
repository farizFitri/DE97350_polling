		#include<p18F4550.inc>

loop_cnt1  	set 0x00
loop_cnt2   set 0x01

    org 0x00
    goto start
    org 0x08
    retfie
    org 0x18
    retfie
	


start	Clrf	TRISD,A
		setf	TRISB,A
		clrf	PORTD,A
check	btfss	PORTB,0,A
		bra		OnLED0
		bcf		PORTD,0,A
		bra		check1
check1	btfss	PORTB,1,A
		bra		OnLED1
		bcf		PORTD,1,A
		bra		check

OnLED0	bsf		PORTD,0,A
		bra		check1
OnLED1	bsf		PORTD,1,A
		bra		check

		end
