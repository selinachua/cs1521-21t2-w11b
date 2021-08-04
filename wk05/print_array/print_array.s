# $t0: i
	.text
main:
	li 	$t0, 0 			# i = 0
while:
	bge 	$t0, 10, end_while

	mul 	$t1, $t0, 4		# i * 4
	lw 	$t2, numbers($t1)	# *(numbers + offset)

	li 	$v0, 1
	move 	$a0, $t2
	syscall 			# printf(num)

	li 	$v0, 11
	li 	$a0, '\n'
	syscall

	add 	$t0, $t0, 1		# i++
	j 	while 
end_while:

	.data
numbers:
	.word 	0, 1, 2, 3, 4, 5, 6, 7, 8, 9