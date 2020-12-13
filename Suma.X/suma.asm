LIST	p=18f4550
#include<p18f4550.INC>
ORG	    0    
Dat_1	equ	0x0D ;Dat_1 = registro 0D 
Dat_2	equ	0x0E ;Dat_2 = registro 0E
Dat_3	equ	0x1D
Dat_4	equ	0x1E
Dat_5	equ	0x2D
Dat_6	equ	0x2E
Dat_7	equ	0x3D
Dat_8	equ	0x3E
Dat_9	equ	0x4D
Dat_10	equ	0x4E
	
Suma	equ	0x0F ;Suma = registro 0F
Resta	equ	0x1F 
And	equ	0x2f
Ior	equ	0x3f
Xor	equ	0x4f

;SUMA
MOVLW	0x8A
movwf	Dat_1; Mueve la constante 57 HEX a W y enseguida mueve W a Dat_1
MOVLW	0x57
movwf	Dat_2; Mueve la constante 8A HEX a W y enseguida mueve W a Dat_2	
ADDWF	Dat_1,0
MOVWF	Suma ;Suma W con Dat_1 y lo guarda en W, posteriormente mueve W al registro                                                                                                                                                                                                                                        Suma
	
	
;RESTA
MOVLW	0x8A
movwf	Dat_3; Mueve la constante 57 HEX a W y enseguida mueve W a Dat_1
MOVLW	0x57
movwf	Dat_4; Mueve la constante 8A HEX a W y enseguida mueve W a Dat_2	
SUBWF	Dat_3,0
MOVWF	Resta ;Resta W con Dat_1 y lo guarda en W, posteriormente mueve W al registro Resta
	
;AND
MOVLW	0x8A
movwf	Dat_5; Mueve la constante 57 HEX a W y enseguida mueve W a Dat_1
MOVLW	0x57
movwf	Dat_6; Mueve la constante 8A HEX a W y enseguida mueve W a Dat_2	
ANDWF	Dat_5,0
MOVWF	And ;Realiza la operación lógica AND entre W y Dat_1 y lo guarda en W, posteriormente mueve W al registro And
	
;OR
MOVLW	0x8A
movwf	Dat_7; Mueve la constante 57 HEX a W y enseguida mueve W a Dat_1
MOVLW	0x57
movwf	Dat_8; Mueve la constante 8A HEX a W y enseguida mueve W a Dat_2	
IORWF	Dat_7,0
MOVWF	Ior ;Realiza la operación lógica AND entre W y Dat_1 y lo guarda en W, posteriormente mueve W al registro And
	
;XOR
MOVLW	0x8A
movwf	Dat_9; Mueve la constante 57 HEX a W y enseguida mueve W a Dat_1
MOVLW	0x57
movwf	Dat_10; Mueve la constante 8A HEX a W y enseguida mueve W a Dat_2	
XORWF	Dat_9,0
MOVWF	Xor ;Realiza la operación lógica AND entre W y Dat_1 y lo guarda en W, posteriormente mueve W al registro And	
	
END
	


