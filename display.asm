# A program i made to learn about display and graphical interface.
.data
.word 


.text
main:
	lui $15 0x1001		# Stores 0x1001 (start adress) on the upper decimal places of $15
	addi $9 $0 32768
	addi $8 $0 0x2222ff	# Stores a shade of blue in $8
	jal bg
	
	lui $15 0x1001
	
	add $4 $0 $15 		# Stores $15 as padress point zero
	addi $5 $0 45		# Stores 45 as padress line
	addi $6 $0 128		# Stores 128 as padress line graphical unit amount
	addi $7 $0 0		# Stores 0 as padress column
	jal padress
	
	addi $8 $0 0x684e22	# Stores a shade of brown in $8
	add $15 $0 $2		# Stores the result of padress as the first pixel
	addi $9 $0 32768	# Stores rect last pixel
	jal rect
	
	
	
	

end:
	addi $2 $0 10
	syscall

# Module to change the background of the 512x256
# Input: $8 as the color
# 	 $15 as the pixel
#	 $9 as the pixel amount
bg:
	sw $8 0($15)
	addi $15 $15 4
	addi $9 $9 -4
	bne $9 0 bg
	jr $31
	

# Module to print a massive rectangle from 2 pixels ($15 and $9)
# Input: $8 as the color
# 	 $15 as the first pixel
#	 $9 as the last pixel
rect:
	sw $8 0($15)
	addi $15 $15 4
	addi $9 $9 -4
	bne $9 0 rect
	jr $31
	



# Module to calculate the adress of a point (l, c)
# Input: $4 Point zero
# 	 $5 Line
#	 $6 Line amount of graphical units
#	 $7 Column
# Output:$2
# Uses (without preserving)
# Obs.: Doesn't check parameters
padress: mul $8 $5 $6	# Stores the multiplication of line by line graphical units amount
	 add $8 $8 $7 	# Sums $8 with $7 (column)
	 sll $8 $8 2	# Multiplies $8 by 4
	 add $2 $8 $4	# Sums $8 with point zero
	 jr $31
	 

	 
	 
	 
	 
