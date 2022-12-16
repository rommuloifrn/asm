.text
    main:

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
        syscall
    j end

    menor:
        add $a0 $0 $t1
        addi $v0 $0 1
        syscall


    # New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall