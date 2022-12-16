.text 
	
	main:
	# Armazena 1, 10 e 100 em um registrador cada
	add $a0 $0 100
	add $a1 $0 10
	add $a2 $0 1
	
	
	# Ler inteiro e passa a entrada pra t0
	addi $2 $0 5
	syscall
	add $t0 $0 $2
	
	# Divide a entrada por a0 (100), resultando nas centenas, e armazena em t1
	div $t0 $a0 
	mflo $t1
	# Move o resto pra t0
	mfhi $t0
	
	# Divide t0 por a1 (10), resultando nas dezenas, e armazena em t2
	div $t0 $a1
	mflo $t2
	# Move o resto pra t0
	mfhi $t0
	
	# Divide t0 por a2 (1), resultando nas unidades, e armarena em t3
	div $t0 $a2
	mflo $t3
	
	
	# Soma t1, t2 e t3 e armazena em t0
	add $4 $t1 $t2
	add $4 $4 $t3
	
	# Imprime o resultado
	addi $2 $0 1
	syscall
	
	# Finaliza
	addi $2 $0 10
	syscall