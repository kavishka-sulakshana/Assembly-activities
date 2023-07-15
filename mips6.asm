.data
	A: .float 4.0
	B: .float 3.3
	C: .float 2.0
	CT: .float 2.0
	GT: .float 1.0
	PG: .float 3.0
	tot: .float 0
.text
	main:
	lwc1 $f1,A
	lwc1 $f2,B
	lwc1 $f3,C
	lwc1 $f4,CT
	lwc1 $f5,GT
	lwc1 $f6,PG
	lwc1 $f0,tot
	jal calc
	calc:
	mul.s $f7,$f1,$f4	
	add.s $f8,$f0,$f7
	mul.s $f7,$f2,$f5
	add.s $f8,$f7,$f8
	mul.s $f7,$f3,$f6
	add.s $f8,$f7,$f8
	add.s $f9,$f4,$f5
	add.s $f9,$f9,$f6
	jr $ra
	li $v0,2
	div.s $f12,$f8,$f9
	syscall
	
