# $t0: z
	.text
main:
	addiu 	$sp, $sp, -4
	sw 	$ra, ($sp)

	# 1. Set up arguments
	# 2. Call jal
	# $a0-a3 for registers 
	li 	$a0, 11		# $a0 = 11	
	li 	$a1, 13		# $a1 = 13
	li 	$a2, 17		# $a2 = 17
	li 	$a3, 19		# $a3 = 19
	jal 	sum4		
	move 	$t0, $v0	# $t0 = $v0 

	li 	$v0, 1
	move 	$a0, $t0 
	syscall

	li 	$v0, 11
	li 	$a0, '\n'
	syscall

	lw 	$ra, ($sp)
	addiu 	$sp, $sp, 4

	li 	$v0, 0
	jr 	$ra

sum4:
# $s0 -> e
# $s1 -> f
sum4__prologue:
	addiu 	$sp, $sp, -12
	sw 	$ra, ($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)

	jal 	sum2
	move 	$s0, $v0

	move 	$a0, $a2
	move 	$a1, $a3
	jal 	sum2
	move 	$s1, $v0

	move 	$a0, $s0
	move 	$a1, $s1
	jal 	sum2

sum4__epilogue:
	lw 	$s1, 8($sp)
	lw 	$s0, 4($sp)
	lw 	$ra, ($sp)
	addiu 	$sp, $sp, 12
	jr 	$ra


sum2:
# Expect the arguments to be in $a0-a3
# Put the return value into $v0
	addiu 	$sp, $sp, -4
	sw 	$ra, ($sp)

	add 	$t0, $a0, $a1
	move 	$v0, $t0

	lw 	$ra, ($sp)
	addiu 	$sp, $sp, 4
	jr 	$ra




# s0 = 0
func1:
	li 	$s0, 0		 

	jal 	func2

	add 	$s0, $s0, 3


func2:
	sw	$s0, ($sp)

	li 	$s0, 5

	lw 	$s0, ($sp)
	jr 	$ra