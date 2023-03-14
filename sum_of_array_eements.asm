.data

	a:.word 3, 2, 5, 6, 1 # массив
	result: .asciiz "sum = "
	
.text
	la $t0, a    # массивтің бірінші элементі a[0]
	li $t1, 0  # t1 есептегіш. i = 0
	li $s2, 0   # sum = 0
Loop:
	
	bge $t1, 5, end # циклдың шарты i <= 5
	lw $s1, 0($t0) # массив элементін оқу. Адресі бойынша
	add $s2, $s2, $s1 # сумманы табу sum = sum + a[i]
	addi $t0, $t0, 4   # массивтің келесі элементін оқу үшін адресті 4-ке арттыру
	addi $t1, $t1, 1 # i = i + 1
	j Loop
	
end:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall 
	
	li $v0, 10
	syscall 