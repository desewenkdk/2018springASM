TITLE Assingment 1 code : 20141506 ±èµ¿±Ô

INCLUDE irvine32.inc

.code
	
main PROC
	mov eax, 20000h
	mov ebx, 10000h
	add eax, 5000h
	sub eax, ebx
	call DumpRegs
	exit
main ENDP
END main