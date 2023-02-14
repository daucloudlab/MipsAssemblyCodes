.data
	space: .asciiz " "
.text
	li $t0, 0
	
	loop:
		beq $t0, 10, exit
		addi $t0, $t0, 1
		move $a0, $t0
		li $v0, 1
		syscall
		la $a0, space
		li $v0, 4
		syscall
		j loop
	exit:
		li $v0, 10
		syscall
		