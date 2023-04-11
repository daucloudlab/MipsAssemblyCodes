.data

	prompt : .asciiz "Enter a string: "
	input : .space 81
	inputSize : .word 80
	output : .asciiz "You typed : "
	
.text
	main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 8
	la $a0, input
	lw $a1, inputSize
	syscall
	
	li $v0, 4
	la $a0, output
	syscall
	
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 10
	syscall
	