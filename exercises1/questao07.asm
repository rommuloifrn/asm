.text
    main:
    # Lê inteiro e guarda em t0
    addi $2 $0 5
    syscall
    add $t0 $0 $2

    # Divide t0 por 10 (t1) e imprime o resto (ultimo numero)
    addi $t1 $0 10
    div $t0 $t1
    mfhi $4
    addi $2 $0 1
    syscall

    # Pula linha
    addi $4 $0 10
    addi $2 $0 11
    syscall

    # Pega o resultado da divisão de t0 por 10, divide por 10 e imprime o resto (penultimo numero)
    mflo $t0
    div $t0 $t1
    mfhi $4
    addi $2 $0 1
    syscall

    # Pula linha
    addi $4 $0 10
    addi $2 $0 11
    syscall

    # Pega o resultado da divisão da divisão, divide por 10 e imprime o resto
    mflo $t0
    div $t0 $t1
    mfhi $4
    addi $2 $0 1
    syscall

    # Pula linha
    addi $4 $0 10
    addi $2 $0 11
    syscall

    # Pega e imprime o resultado da divisão anterior
    mflo $4
    addi $2 $0 1
    syscall

    # Pula linha
    addi $4 $0 10
    addi $2 $0 11
    syscall



    # Termina o programa
    addi $2 $0 10
    syscall