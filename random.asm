.text
	main:
	# Coloca o OPCODE em 5 (leitura de inteiro) e faz a syscall
	addi $2, $0, 5
	syscall
	
	# Adiciona o resultado da leitura em $v0
	add $v0, $0, $2
	
	# Adiciona $v0 + $v0 em $s4
	add $4, $v0, $v0
	
	# Coloca o OPCODE em 1 (impress�o de inteiro) e faz a syscall
	add $2, $0, 1
	syscall

	# Finaliza o programa
	add $2, $0, 10
	syscall
	