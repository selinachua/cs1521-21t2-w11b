# row in $t0, col in $t1
main:
	li 	$t0, 0
out_loop:
	bge 	$t0, 6, out_loop_end

	li 	$t1, 0
in_loop:
	bge 	$t1, 12, in_loop_end

	mul 	$t2, $t0, 12	# row * N_COL
	add 	$t2, $t2, $t1 	# $t2 += col
	lb 	$t3, flag($t2)	# *(flag + $t2)

	li 	$v0, 11
	move 	$a0, $t3
	syscall

	add 	$t1, $t1, 1
	j 	in_loop
in_loop_end:
	li 	$v0, 11
	li 	$a0, '\n'
	syscall

	add 	$t0, $t0, 1
	j 	out_loop
out_loop_end:
	li 	$v0, 0
	jr 	$ra


	.data
# 0x...20
flag:
    	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    	.byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
    	.byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
    	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    	.byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'