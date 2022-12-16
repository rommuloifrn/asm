.text
    main:

    # Reads character
    addi $v0 $0 12
    syscall
    # Subtracts 32 from the character value
    sub $a0 $v0 32
    # Prints character
    addi $v0 $0 11
    syscall

    # New line
    addi $4 $0 10
    addi $2 $0 11
    syscall

    # Finishes program
    addi $v0 $0 10
    syscall