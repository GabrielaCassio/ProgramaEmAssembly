.data
msg: .asciiz "Digite um numero \n"
num: .word 1
suc: .word 1
.text
main: li $v0, 4
la $a0, msg
syscall

li $v0, 5
syscall
	
sw $v0, num

addi $s1, $v0, 1
sw $s1, suc

addi $v0, $zero, 1
add $a0, $s1, $zero
syscall
jr $ra