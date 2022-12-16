.text
    main:

    # Reads integer 
    addi $v0 $0 5
    syscall
    # Stores value 10 in t7
    addi $t7 $0 10

    # Divides input by 10 & prints the rest
    div $v0 $t7
    mfhi $a0
    add $v0 $0 1
    syscall

    mflo $a0
    div $a0 $t7
    mfhi $a0

    syscall

    mflo $a0
    syscall





    # New line
    addi $4 $0 10
    addi $2 $0 11
    syscall


    # Finishes the program
    addi $v0 $0 10
    syscall