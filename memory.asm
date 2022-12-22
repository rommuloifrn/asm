# A program i made to learn about memory
.text
main:
addi $14 $0 20	# stores 20 on $14


lui $9 0x1001

sw  $14 4($9)	# sw (store word) here stores in address 4+$9 the data that is on $14
lw $8 4($9)	# lw (load word) here stores in $8 the data that is on the adress $9+4 (0x1001)

add $4 $0 $8
addi $2 $0 1
syscall


addi $2 $0 10
syscall

# Sidenote: i was not understanding the fucking table. I'm a big, sentient melodramatic monkey.
# the hex in the box signals the data, not the address. Shit.