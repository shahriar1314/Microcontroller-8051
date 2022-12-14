ORG 0000H

MOV SP, #70H
MOV PSW, #00H

MOV R6, #0		; at ones place
MOV R7, #0		; at tens place
MOV R4, #0
MOV R5, #0
MOV P0, #0
MOV P2, #0
MOV P3, #0
MOV A,	#0
MOV DPTR, #VALUE

	MOV R0, #100
L0:	MOV A, R6

SHOW:	MOV A,R6
	SETB P3.0
	ACALL DISP
	MOV P2, A
	ACALL DELAY
	CLR P3.0

	MOV A,R7
	SETB P3.1
	ACALL DISP
	MOV P2, A
	ACALL DELAY
	CLR P3.1

	INC R4			; this loop helps to vizualize the digits
	CJNE R4, #0FFH, SHOW
	MOV R4, #0

	INC R6
	CJNE R6, #10, X1
	MOV R6, #0
	INC R7
	CJNE R7, #10, X1
	MOV R7, #0
X1:	DJNZ R0, L0

	SJMP EXIT


DISP: 	MOVC A,@A+DPTR
	RET

DELAY:	MOV R3, #02H
DL1:	MOV R2, #0FAH
DL0:	DJNZ R2, DL0
	DJNZ R3, DL1
	RET
EXIT:

VALUE:	DB 3FH ;0
	DB 06H ;1
	DB 5BH ;2
	DB 4FH ;3 
	DB 66H ;4
	DB 6DH ;5
	DB 7DH ;6
	DB 07H ;7
	DB 7FH ;8
	DB 6FH ;9

	END
