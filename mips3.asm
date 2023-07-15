.data
	
.text
	# addi -> add $zero to 1000 and parse it to $s0
	li $v0, 1
	addi $s0, $zero, 1000
	addi $s1, $zero, 3
	
	div $s0, $s1
	
	mflo $t1
	mfhi $t2
				#mflo -> store in lo reg | result
				#mfhi -> store in hi reg | remainder 
				# 	             in the temparary values
	syscall
	
# inside a function $s can't change inside the other functions
# thats how $t and $s variables are differ from each other
	 