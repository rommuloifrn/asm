.text
main:
    # Stores "&" on t7
    addi $t7 $0 38

    # Reads the first number and adds in t0
    addi $v0 $0 5
    syscall
    add $t0 $0 $v0
    # Reads the second number and adds in t1
    addi $v0 $0 5
    syscall
    add $t1 $0 $v0

    # If rs < rt, stores 1 on t3. Otherwise, stores 0
    slt $t3 $t0 $t1
    
    beq $t3 0 maior

    j menor

    maior:
        add $a0 $0 $t0
        addi $v0 $0 1
        syscall # Prints the higher number (t0)

        add $a0 $0 $t7
        addi $v0 $0 11
        syscall # Prints "&"

        sub $a0 $t0 $t1
        addi $v0 $0 1
        syscall # Prints the positive difference between the numbers

    j end

    menor:
        add $a0 $0 $t1
        addi $v0 $0 1
        syscall # Prints the higher number (t1)

        add $a0 $0 $t7
        addi $v0 $0 11
        syscall # Prints "&"

        sub $a0 $t1 $t0
        addi $v0 $0 1
        syscall # Prints the positive difference between the numbers





# New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall