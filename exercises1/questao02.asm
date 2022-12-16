.text
	main:
	
	# Coloca o OPCODE em 5 (leitura de inteiro) e faz a syscall
	addi $2, $0, 5
	syscall
	
	# Adiciona o resultado da leitura em $v0
	add $v0, $0, $2
	
	# Multiplica $v0 por $v0 e insere o resultado LO em $v1
	mul $v1, $v0, $v0
	
	# Adiciona $v1 + $0 em $4
	add $4 $0 $v1

	# Muda o OPCODE pra 1 (impress�o de inteiro) e faz a syscall
	add $2 $0 1
	syscall
	
	# Finaliza o programa
	addi $2 $0 10
	syscall