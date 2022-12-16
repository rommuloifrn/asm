.text
main:
    # Read integer
    addi $2 $0 5
    syscall

    # If the input is positive, jump to pos
    srl $8 $2 31
    beq $8 0 pos

    # The input is negative, so multiplies by itself, then prints it
    mul $2 $2 $2
    j end

pos:
    # Double the input, then prints it
    sll $2 $2 1

end:
    # Prints the result
    add $4 $0 $2
    addi $2 $0 1
    syscall


    # New line & finishes the program
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall