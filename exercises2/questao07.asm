# Statement: 

.text
main:
   addi $2 $0 5
   syscall
   
   add $15 $0 4
   add $14 $0 400
   add $13 $0 100
   
   div $2 $15			# Divides input by 4
   mfhi $15
   beq $15 0 divby100		# If the input is divisible by 4, j to divby100
   
   j nope
   
   divby100:
      div $2 $13		# Divides input by 100
      mfhi $13
      beq $13 0 divby400
      j yep			# If the input is not divisible by 100, j to yep
      
   divby400:
      div $2 $14
      mfhi $14
      beq $14 0 yep		# If the input is divisible by 4 but not by 100, j to yep
      
       				# If the input is divisible by 4 and by 100, nope below & j end
   nope:
      addi $4 $0 78
      add $2 $0 11
      syscall
      j end
   
   yep:
      addi $4 $0 83
      add $2 $0 11
      syscall



# New line & finishes the program
end:
    addi $4 $0 10
    addi $2 $0 11
    syscall
    addi $v0 $0 10
    syscall