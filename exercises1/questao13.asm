.text
    main:

    # Sets opcode to 11 (print char)
    addi $v0 $0 11

    # Adds and prints every character of the phrase "Hello World"
    addi $a0 $0 72
    syscall
    addi $a0 $0 101
    syscall
    addi $a0 $0 108
    syscall
    addi $a0 $0 108
    syscall
    addi $a0 $0 111
    syscall
    addi $a0 $0 32
    syscall
    addi $a0 $0 87
    syscall
    addi $a0 $0 111
    syscall
    addi $a0 $0 114
    syscall
    addi $a0 $0 108
    syscall
    addi $a0 $0 100
    syscall

    # New line
    addi $4 $0 10
    addi $2 $0 11
    syscall


    # Finishes the program
    addi $v0 $0 10
    syscall