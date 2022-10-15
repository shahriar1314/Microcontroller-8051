ORG 00H 
						;WE WILL COMPARE FIRST AND LAST BIT,
						;THEN SECOND BIT WITH THE SECOND LAST BIT, 
						;AND THIS WAY WE WILL GRADUALLY COME TO THE MIDDLE

MOV R0, #30H					;ADDRESS OF FIRST BYTE
MOV R1, #36H					;ADDRESS OF LAST BYTE
MOV R7, #3					;AS THERE ARE TOTAL 7 BYTES, WE NEED TO CHECK 3 TIMES (7/2=>3)
MOV P1, #0H					;TO SET PORT 1 AS OUTPUT

LOOP:	MOV A, @R0
	XRL A, @R1				;XRL WITH THE SAME VALUE WILL MAKE REGISTER A = 0, OTHERWISE A!=0
	CJNE A, #0, NOPE			;IF THEY DON'T MATCH, THAT MEANS NOT PALINDROME
	INC R0
	DEC R1
	DJNZ R7, LOOP				;IF EVERY BYTE MATCHES, THEN IT'S A PALINDROME, WE WILL CHECK 3 TIMES
	
YEAH: 	MOV P1, 'Y'				;IF PALINDROME, SENDING 'Y' TO PORT 1
	SJMP EXIT		
NOPE:	MOV P1, 'N'				;IF NOT PALINDROME, SENDING 'N' TO PORT 1

EXIT:

ORG 30H 
VALUE: DB 'd','e','v', 'i', 'd', 'e', 'd' 	;INITIAL VALUE STORED AT LOCATION 30H 

END 