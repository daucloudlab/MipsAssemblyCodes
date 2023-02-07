.data

	PI:.float 3.14
	
.text
	li $v0, 6
	syscall
	
	lwc1 $f1, PI
	mul.s $f12, $f0, $f1
	li $v0, 2
	syscall