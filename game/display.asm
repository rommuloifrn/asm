# A program i made to learn about display and graphical interface.
# Made to a 128x64 screen

.data
.word 


.text
main:
	lui $15 0x1001		# Stores 0x1001 (start adress) on the upper decimal places of $15
	addi $9 $0 32768
	addi $8 $0 0x000000	# Stores a sky color in $8
	jal bgaaa
	
	lui $15 0x1001
	
	add $4 $0 $15 		# Stores $15 as padress point zero
	addi $5 $0 55		# Stores 45 as padress line
	addi $6 $0 128		# Stores 128 as padress line graphical unit amount
	addi $7 $0 0		# Stores 0 as padress column
	jal padress
	
	addi $8 $0 0x684e22	# Stores a shade of brown in $8
	add $15 $0 $2		# Stores the result of padress as the first pixel
	addi $9 $0 32768	# Stores rect last pixel
	jal rect
	

	# -----------------------------------------------------------------------------------------------------------------------------------------
	# brilha brilha estrelinha quero ver vc brilhar
	poisbrilhemeufilho:
	
	lui $15 0x1001		# this calcs the pixel
	addi $5 $0 10 		# line
	addi $7 $0 70 		# column
	jal fepads
	
	lw $13 0($2)		# hides sky color in my pocket
	
	addi $8 $0 0xffffff	#
	add $15 $0 $2 		# Stores star on the pixel
	sw $8 0($15)		#
	
	sw $13 0($15)		# Stores original color on the address
	
	# -----
	
	lui $15 0x1001		# this calcs the pixel
	addi $5 $0 20 		# line
	addi $7 $0 40 		# column
	jal fepads
	
	lw $13 0($2)		# hides sky color in my pocket
	
	addi $8 $0 0xffffff	#
	add $15 $0 $2 		# Stores star on the pixel
	sw $8 0($15)		#
	
	sw $13 0($15)		# Stores original color on the address
	
	
	
	
	
	
	
	
	
	j poisbrilhemeufilho
	
	
	
	lui $15 0x1001
	addi $5 $0 20 # line
	addi $7 $0 70 # column
	jal fepads
	
	addi $8 $0 0xffffff
	add $15 $0 $2 		# Stores
	sw $8 0($15)
	
	
	

end:
	addi $2 $0 10
	syscall
	
	
# Module to put a white point on screen
# Input: $15 as the pixel
# 

# Module to change the background of the 128x64 display
# Input: $8 as the color
# 	 $15 as the pixel
#	 $9 as the pixel amount
bg:
	sw $8 0($15)
	addi $15 $15 4 # moves from one pixel to another
	addi $9 $9 -4
	bne $9 0 bg
	jr $31
	
# Instance of bg
# Input: $8 as the color
# 	 $15 as the pixel
#	 $9 as the pixel amount
#	 $10 as pixel counter to the color addition
# 	 $11 as line counter to the color addition
bgaaa:
	sw $8 0($15)
	addi $15 $15 4
	addi $9 $9 -4
	
	addi $10 $10 1
	beq $11 42 comeback
	beq $10 128 grad
	comeback:
	bne $9 0 bgaaa
	jr $31
	
	grad:
	addi $10 $0 0
	addi $11 $11 1
	addi $8 $8 0x020406
	j comeback
	
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
padress: mul $8 $5 $6	# Stores the multiplication of line by line length
	 add $8 $8 $7 	# Sums $8 with $7 (column)
	 sll $8 $8 2	# Multiplies $8 by 4
	 add $2 $8 $4	# Sums $8 with point zero
	 jr $31
	 

# Felipe instance of padress
# # Input: 
# 	 $5 Line
#	 $7 Column
# Output:$2
# pads presume that the line length is 128.
fepads:
	mul $8 $5 512	# 
	sll $7 $7 2	# 
	add $8 $8 $7 	#
	add $2 $8 $15	# 
	jr $31
	 
	 
	 
