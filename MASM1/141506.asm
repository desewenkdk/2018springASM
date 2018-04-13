TITLE Assingment 2 code : 20141506 ±èµ¿±Ô


INCLUDE Irvine32.inc

.data
Include hw2.inc

.code
main PROC
	mov eax, val1
	add eax, eax
	add eax, val1
	add eax, eax 
	add eax, eax ;12 * val1


	call DumpRegs
	Exit
main ENDP
end main