.data


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
	
	