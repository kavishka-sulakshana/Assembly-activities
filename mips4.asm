.data

.text
	main:
		addi $a3, $zero, 50
		addi $a2, $zero, 100
		jal addMarks	
		syscall	 # Jump and link to addMarks
	
	addMarks:
		li $v0, 1
		add $a1, $a3, $a2
		jr $ra # jump register and keeping the counter also -> after executing this function 
			# we have to return last position. So should jump to the main in here
			
# li $v0, 10 terminating the function