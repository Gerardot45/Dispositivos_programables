LIST	p=18f4550
#include<p18f4550.INC>
ORG	    0    
Dato_1	equ	0x0D 
Dato_2	equ	0x0E 
	
resultado equ	0x0F

;SUMA
MOVLW	0x8A
movwf	Dato_1
MOVLW	0x57
movwf	Dato_2
ADDWF	Dato_1,0
MOVWF	resultado                                                                                                                                                                                                                           Suma
	
	
;RESTA
MOVLW	0x8A
movwf	Dato_1
MOVLW	0x57
movwf	Dato_2
SUBWF	Dato_1,0
MOVWF	resultado 
	
;AND
MOVLW	0x8A
movwf	Dato_1
MOVLW	0x57
movwf	Dato_2
ANDWF	Dato_1,0
MOVWF	resultado 
	
;OR
MOVLW	0x8A
movwf	Dato_1
MOVLW	0x57
movwf	Dato_2	
IORWF	Dato_1,0
MOVWF	resultado 
	
;XOR
MOVLW	0x8A
movwf	Dato_1
MOVLW	0x57
movwf	Dato_2
XORWF	Dato_1,0
MOVWF	resultado
	
END