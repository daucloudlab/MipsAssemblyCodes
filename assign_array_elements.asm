.data
	array : 0
	
.text
	main: 
		move $t0, $0
		la $t1, array
		
	start:
		bge $t0, 10, exit
		sw $t0, 0($t1)
		addi $t0, $t0, 1
		addi $t1, $t1, 4
		j start
		
	exit:
		li $v0, 10
		syscall
		