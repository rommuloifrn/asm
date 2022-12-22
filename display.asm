# A program i made to learn about display and graphical interface.
.data
.word 


.text
main:
lui $15 0x1001

addi $8 $0 0x2222ff
sw $8 0($15)


end:
addi $2 $0 10
syscall





# Module to calculate the adress of a point (l, c)
# Input: $4 Point zero
# 	 $5 Line
#	 $6 Line amount of graphical units
#	 $7 Column
# Output:$2
# Uses (without preserving)
# Obs.: Doesn't check parameters
padress: mul $8 $5 $6	# Stores the multiplication of line by line graphical units amount
	 add $8 $8 $7 	# Sums $8 with &7 (column)
	 sll $8 $8 2	# Multiplies $8 by 4
	 add $2 $8 $4	# Sums $8 with point zero
	 jr $31
	 
	 
	 
	 
	 
	 