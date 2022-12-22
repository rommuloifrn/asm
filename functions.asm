# This is a program i made to understand functions (modularization).
.text
main:
	addi $2 $0 5
	syscall
	add $4 $0 $2
	jal fatboy
	addi $2 $0 1
	syscall
	
end:
	addi $2 $0 10
	syscall
	
	

	
	

# Module to calc the square of the input
# Input: $4
# Output: $4
# Doesnt check anything
sqr:	mul $4 $4 $4 # Multiplies the input by itself
	jr $31
	

# Module to calc the factorial of the input
# Input: $4
# Output: $4
# obs.: If the input is lower than 2, returns 42
fatboy:	slti $8 $4 2
	beq $8 1 wtf
	add $8 $4 -1
  mt:	mul $4 $4 $8
	add $8 $8 -1
	bne $8 0 mt
	jr $31
  wtf:	addi $4 $0 42
  	jr $31
