.text
    main:
    addi $v0 $0 5
    syscall
    addi $t0 $0 2

    div $v0 $t0
    mfhi $a0
    addi $v0 $0 1
    syscall


    # New line & finishes the program
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall