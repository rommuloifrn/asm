.text
	main: 
	
	# Muda o OPCODE para 5 (leitura de inteiro) e faz syscall
	addi $2 $0 5
	syscall
	
	# adiciona o n�mero lido em $a0
	add $a0 $0 $2
	
	# Muda o OPCODE para 5 e faz syscall
	addi $2 $0 5
	syscall
	
	# Adiciona o n�mero lido em $a1
	add $a1 $0 $2
	# Multiplica $a0 e $a1 e coloca o resultado em $4
	mul $4 $a0 $a1
	
	# Muda o OPCODE para 1 (impress�o de inteiro) e faz syscall
	addi $2 $0 1
	syscall
	