


.text

	main:
	li $t1, 100
	li $t2, -50
	add $t0, $t1, $t2
	
	addi $t0, $t0, 50
	
	#pseudo add
	add $t0, $t0, 50
	
	# incorrect
	addiu $t0, $t0, -100
	
	# 32 immediate, 0x562b13
	# lui $1, 0x00000056
	# ori $1, $1, 0x00002b13
	# add $9, $10, $1
	addi $t1, $t2, 5647123
	

	addi $v0, $zero, 4
	
	# lui $1, 0x00001001
	# ori $1, $1, 0x00000000
	la $a0, prompt1
	syscall
	
	addi $v0, $zero, 5
	syscall
	move $t1, $v0
	
	addi $v0, $zero, 4
	la $a0, prompt2
	syscall
	
	addi $v0,$zero, 5
	syscall
	move $t2, $v0
	
	add $s0,$t1, $t2
	
	addi $v0, $zero, 4
	la $a0, result
	syscall
	
	addi $v0, $zero, 1
	move $a0, $s0
	syscall
	  
		
.data
	prompt1 : .asciiz "Please enter the first value to add: "
	prompt2 : .asciiz "Please enter the second value to add: "
	result : .asciiz "result is "
		