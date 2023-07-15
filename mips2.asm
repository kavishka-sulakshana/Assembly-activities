.data
	num1 : .float 100
	num2 : .float 20
.text
	li $v0, 2
	lwc1 $f1, num1
	lwc1 $f2, num2
	div.s $f12,$f1,$f2
	syscall	