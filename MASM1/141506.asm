TITLE Assingment 2 code : 20141506 ±èµ¿±Ô


INCLUDE Irvine32.inc

.data
Include hw2.inc

.code
main PROC
	mov eax, val1
	add eax, eax
	mov ecx, eax ;store 2val1
	add eax, val1
	add eax, eax 
	add eax, eax ;12 * val1

	mov ebx, val2
	add eax, ebx ;;12*val + val2
	add ebx, ebx
	sub ecx, ebx ;;store 2val1 - 2val2
	add eax, ebx ;;12*val + 3*val2
	add ebx, ebx
	sub ecx, ebx ;; store 2val1 - 6val2
	add ebx, ebx
	add ebx, ebx 
	add eax, ebx ;;12*val + (3+16=19)*val2
	add ebx, ebx
	sub ecx, ebx ;;store 2val1 - (6+32=38)val2
	add eax, ebx ;;12val1 + (19+32=51)val2

	mov ebx, val4
	sub ebx, val3 ; (val4 - val3)
	sub eax, ebx ;12val1 + 51val2 - (val4-val3)
	add ebx, ebx
	add ebx, ebx
	add ecx, ebx ; store 2val1 - 38val2 + 4(val4 - val3)
	sub eax, ebx ; 12val1 + 51val2 - (1+4=5)(val4-val3)
	add ebx, ebx
	add ebx, ebx
	add ecx, ebx ; store 2val1 - 38val2 + (4+16=20)(val4 - val3)
	mov ebx, eax
	add ebx, ecx ; calculate (12+2)val1 + (51-38)val2 + (-5+20)(val4-val3)

	call DumpRegs
	Exit
main ENDP
end main