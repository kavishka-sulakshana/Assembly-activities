.data
	tot_income : .float 56320.45
	rent : .float 15000.00
	logistics : .float 22400.50
.text
	lwc1 $f0, tot_income
	lwc1 $f2, rent
	lwc1 $f4, logistics
	add.s $f6,$f2,$f4
	li $v0,2
	sub.s $f12,$f0,$f6
	syscall
	