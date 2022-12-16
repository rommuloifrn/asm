# Statement: 

.text
main:
   addi $2 $0 5
   syscall
   add $8 $0 $2
   
   addi $2 $0 5
   syscall
   add $9 $0 $2
   
   addi $2 $0 5
   syscall
   add $10 $0 $2
   
   slti $15 $8 1 		# Checks if day is less than 1
   beq $15 1 wtf
   slti $15 $8 32		# Checks if day is less than 32
   bne $15 1 wtf
   
   
   beq $9 01 janeiro
   beq $9 02 fevereiro
   beq $9 03 marco
   beq $9 04 abril
   beq $9 05 maio
   beq $9 06 junho
   beq $9 07 julho
   beq $9 08 agosto
   beq $9 09 setembro
   beq $9 10 outubro
   beq $9 11 novembro
   beq $9 12 dezembro
   
   wtf:
      addi $4 $0 63
      addi $2 $0 11
      syscall
      j end
   
   
   
   janeiro:
   
   fevereiro:
   
   marco:
   
   abril:
   
   maio:
   
   junho:
   
   julho:
   
   agosto:
   
   setembro:
   
   outubro:
   
   novembro:
   
   dezembro:
   
      






# New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall
