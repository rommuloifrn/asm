.text 
	main:
	
	# Muda o OPCODE para 5 (leitura de inteiros) e faz syscall
	addi $2 $0 5
	syscall
	
	# Adiciona o valor lido em $2
	add $a0 $0 $2
	
	# Muda o OPCODE para 5 e faz syscall
	addi $2 $0 5
	syscall
	
	# Adiciona o valor lido em $a1
	add $a1 $0 $2
	
	# Soma $a0 e $a1 e coloca em v0
	add $v0 $a0 $a1
	
	# Coloca o valor 2 em $a2
	addi $a2 $0 2
	
	# Divide $v0 por 2
	div $v0 $a2
	
	# Adiciona LO (resultado da divis�o) em $4
	mflo $4
	
	# Muda o OPCODE para 1 (impress�o de inteiros) e faz syscall
	add $2 $0 1
	syscall
	
	# Finaliza o programa
	add $2 $0 10
	syscall