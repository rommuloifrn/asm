.text
    main:

    # t0 will be the seconds, t1 the minutes and t2 the hours
    
    # Reads integer and puts in $t0
    addi $v0 $0 5
    syscall
    add $t0 $0 $v0
    # Puts the value 60 on t7
    addi $t7 $0 60
    add $t6 $0 58

    # Divides the input by 60
    div $t0 $t7
    # Stores the rest (seconds) in t0 and the result (minutes) on t1
    mfhi $t0
    mflo $t1

    # Divides the minutes by 60 and stores minutes on t1 and hours on t2
    div $t1 $t7
    mfhi $t1
    mflo $t2

    # Puts hours on $v0 ($4) and prints
    add $a0 $0 $t2
    addi $v0 $0 1
    syscall

    # Prints ":"
    addi $a0 $0 58
    addi $v0 $0 11
    syscall


    # Puts minutes on $v0 ($4) and prints
    add $a0 $0 $t1
    addi $v0 $0 1
    syscall

    # Prints ":"
    addi $a0 $0 58
    addi $v0 $0 11
    syscall

    # Puts seconds on $v0 ($4) and prints
    add $a0 $0 $t0
    addi $v0 $0 1
    syscall

    # New line
    addi $4 $0 10
    addi $2 $0 11
    syscall






    # Finishes the program
    addi $2 $0 10
    syscall

