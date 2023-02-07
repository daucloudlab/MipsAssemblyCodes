.data
	my_message: .asciiz "Hello World"  
	
.text
	li $v0, 4
	la $a0, my_message
	syscall 