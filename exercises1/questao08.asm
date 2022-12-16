.text
    main:
    
    # Read hours
    addi $2 $0 5
    syscall
    add $t0 $0 $2

    # Read minutes
    addi $2 $0 5
    syscall
    add $t1 $0 $2

    # Read seconds
    addi $2 $0 5
    syscall
    add $t2 $0 $2

    # Multiplies minutes by 60 and hours by 3600
    mul $t1 $t1 60
    mul $t0 $t0 3600

    # Sums the three times and prints it
    add $4 $t2 $t1
    add $4 $4 $t0
    addi $2 $0 1
    syscall

    # New line
    addi $4 $0 10
    addi $2 $0 11
    syscall


    # Ends program
    addi $2 $0 10
    syscall