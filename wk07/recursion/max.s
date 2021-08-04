# $a0 = a[]
# $a1 = length
# $s0 = first_element
# $s1 = max_so_far
max:
	# prologue
	addi 	$sp, $sp, -12
	sw 	$ra, ($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)

	lw 	$s0, 0($a0)	# int first_element = a[0];
max__if1:
	bne 	$a1, 1, max__else1 	#  if (length == 1)
	move 	$v0, $s0 	# $v0 = $s0
	j 	max__end
max__else1:
	add 	$a0, $a0, 4 	# $a0 = &a[1]
	sub 	$a1, $a1, 1	# $a1 = length - 1
	jal 	max
	move 	$s1, $v0 	# $s1 = max_so_far
max__if2:
	ble 	$s0, $s1, max__endif2
	move 	$s1, $s0 	# $s1 = $s0
max__endif2:
	move 	$v0, $s1 	# $v0 = max_so_far
max__endif1:

max__end:
	# epilogue
	lw 	$s1, 8($sp)
	lw 	$s0, 4($sp)
	lw 	$ra, ($sp)
	addi 	$sp, $sp, 12