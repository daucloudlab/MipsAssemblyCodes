.data
	my_double: .double 2.78 
	zero_double: .double 0.0 

.text
	ldc1 $f2, my_double
	ldc1 $f0, zero_double

	li $v0, 3
	add.s $f12, $f2, $f0
	syscall 
 
