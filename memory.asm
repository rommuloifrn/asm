# A program i made to learn about memory
.data
.word 0x00000005 0x00000002 0x00000042 0x00000024
.word 0x00000006

.text
main:
addi $14 $0 20	# Stores 20 on $14


lui $9 0x1001 	# Stores hex 1001 on the higher value decimal places on $9

sw  $14 16($9)	# sw (store word) here stores in address 4+$9 the data that is on $14
lw $8 4($9)	# lw (load word) here stores in $8 the data that is on the adress $9+4 (0x1001)

add $4 $0 $8	#
addi $2 $0 1	# Prints the value
syscall		#

addi $4 $0 10	#
addi $2 $0 11	# Prints newline
syscall		#

add $4 $0 $9
addi $5 $0 3
jal printit


end:
addi $2 $0 10
syscall

# Sidenote: i was not understanding the fucking table. I'm a big, sentient melodramatic monkey.
# the hex in the box signals the data, not the address. Shit.

# Another sidenote: values are stored in hex 4 by 4 (32b)




# Module to print a int sequence
# Input: $4 int adress
#	 $5 data amount to print
# Output: --
# Uses (without preserving): $9, $10, $4, $2
printit: add $9 $0 $4	 # Stores initial adress in $9
	 add $10 $0 $5	 # Stores data amount in $5
cont:	 lw $4 0($9)	 # Stores MEM[$9] in $4
	 addi $2 $0 1
	 syscall	 # Prints $4
	 addi $4 $0 32
 	 addi $2 $0 11
	 syscall	 # Prints " "
	 addi $9 $9 4 	 # Stores the next adress on $9
	 addi $10 $10 -1 # Remains to print
	 bne $10 $0 cont # If remains something to print, go to cont
printitend: jr $31








