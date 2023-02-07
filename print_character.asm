.data
	my_char:.byte 'm'
	
.text
	li $v0, 4
	la $a0, my_char
	syscall 