.data
	my_number: .word 54321

.text
	li $v0, 1
	lw $a0, my_number
	syscall