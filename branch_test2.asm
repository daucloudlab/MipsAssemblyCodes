.data
message: .asciiz "The number1 less than number2" 
message2: .asciiz "Nothing happened"
number1: .float 2.14
number2: .float 3.14
.text

main:
	lwc1 $f0, number1
	lwc1 $f1, number2

	c.lt.s $f0, $f1
	
	 bc1t if_true 

li $v0, 10
syscall 

if_true:
	li $v0, 4
	la $a0, message
	syscall