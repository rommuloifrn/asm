# Statement: Write a program that reads two numbers and writes the magnitude ratio between them.

.text
main:
    addi $2 $0 5
    syscall
    add $8 $0 $2

    addi $2 $0 5
    syscall
    add $9 $0 $2

    beq $8 $9 iguais    # If $8 and $9 are equals, jump to iguais
    slt $15 $8 $9       # Checks if $8 is lower than $9
    beq $15 1 amenor    # If yes, jump to amenor

    #amaior
        addi $2 $0 1
        add $4 $0 $8
        syscall         # Prints the first input
        addi $2 $0 11
        addi $4 $0 62
        syscall         # Prints ">"
        addi $2 $0 1
        add $4 $0 $9
        syscall         # Prints the second input
        j end

    amenor:
        addi $2 $0 1
        add $4 $0 $8
        syscall         # Prints the first input
        addi $2 $0 11
        addi $4 $0 60
        syscall         # Prints "<"
        addi $2 $0 1
        add $4 $0 $9
        syscall         # Prints the second input
        j end

    iguais:
        addi $2 $0 1
        add $4 $0 $8
        syscall         # Prints the first input
        addi $2 $0 11
        addi $4 $0 61
        syscall         # Prints "="
        addi $2 $0 1
        add $4 $0 $9
        syscall         # Prints the second input



# New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall
