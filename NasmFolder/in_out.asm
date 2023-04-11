section .data 
	userMsg db 'Sandy engiz: ' 
	lenUserMsg equ $-userMsg ;хабарламаның ұзындығы
	dispMsg db 'Сіздің енгізген саныңыз: '
	lenDispMsg equ $-dispMsg

section .bss 
	num resb 5

section .text
	global main
	main:
		;подсказка
		mov eax, 4
		mov ebx, 1
		mov ecx, userMsg
		mov edx, lenUserMsg
		int 80h

		;Санды енгізу және сақтау
		mov eax, 3
		mov ebx, 2
		mov ecx, num
		mov edx, 5 ;5 bytes (numeric, 1 for sign) of that information
		int 80h
		; хабарламаны  шығару
		mov eax, 4
		mov ebx, 1
		mov ecx, dispMsg
		mov edx, lenDispMsg
		int 80h
		;енгізілген санды шығару
		mov eax, 4
		mov ebx, 1
		mov ecx, num
		mov edx, 5
		int 80h
		;шығу
		mov eax, 1
		mov ebx, 0
		int 80h

