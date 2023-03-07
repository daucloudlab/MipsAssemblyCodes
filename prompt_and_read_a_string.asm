.data
	input_prompt : .asciiz "Enter a string value "
	input_space : .space 81
	output_prompt : .asciiz "String value that have entered by user : "
	string_size : .word 80

.text
	main:
	
	li $v0, 4
	la $a0, input_prompt
	syscall
	
	li $v0, 8
	la $a0, input_space
	lw $a1, string_size
	syscall
	
	li $v0, 4
	la $a0, output_prompt
	syscall
	
	
	li $v0, 4
	la $a0, input_space
	syscall
	
	