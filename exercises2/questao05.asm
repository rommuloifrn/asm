# Statement: Write a program that reads three grades (between 0 and 100) and calculates the weighted average with weights 1, 2 and 3. Show the average and if the student was approved, write after the average the letter A. If the student was disapproved, show, after the average, the letter R. The approvation average is 60.

.text
main:
    addi $2 $0 5
    syscall
    add $8 $0 $2    # Stores input on $8

    addi $2 $0 5
    syscall
    add $9 $0 $2    # Stores input on $9

    addi $2 $0 5
    syscall
    add $10 $0 $2   # Stores input on $10

    sll $11 $9 1    # Stores on $11 the multiplication of the second grade by 2
    add $11 $11 $10 # Sums $10 (third grade) to $11
    sll $10 $10 1   # Multiplies $10 by two
    add $11 $11 $10 # Sums $10 to $11, so $11 = $9 x 2 + $10 x 3
    add $11 $11 $8  # Sums $8 (first grade) to $11

    addi $15 $0 6   # Store 6 (sum of the weights) on $15
    div $11 $15     # Divides the sum of the grades by the sum of the weights

    mflo $4         #
    addi $2 $0 1    #
    syscall         # Prints the result

    addi $4 $0 44   #
    addi $2 $0 11   #
    syscall         # Prints a comma

    mfhi $11

    sll $4 $11 3    #
    add $4 $4 $11   #
    add $4 $4 $11   #

    div $4 $15
    mflo $4

    addi $2 $0 1
    syscall


# New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall