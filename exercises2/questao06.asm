# Statement: 

.text
main:
    addi $2 $0 5
    syscall
    add $8 $0 $2

    addi $2 $0 5
    syscall
    add $9 $0 $2

    slti $15 $8 65      # Checks if age ($8) is less than 65
    beq $15 0 yep       # If the age is 65 or higher, j to yep

    slti $15 $9 40      # Checks if work time is less than 40
    beq $15 0 yep       # If wt is 40 or higher, j to yep

    slti $15 $8 60      # Checks if age ($8) is less than 60
    slti $14 $9 36      # Checks if work time is less than 36
    add $15 $15 $14
    beq $15 0 yep       # If none of the above are true, j to yep


    j nope

    yep:
        addi $4 $0 83
        addi $2 $0 11
        syscall
        j end

    nope:
        addi $4 $0 78
        addi $2 $0 11
        syscall


# New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall