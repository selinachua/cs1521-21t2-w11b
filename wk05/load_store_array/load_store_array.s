# Uses
# $t0 -> i

	.text
main:
	li 	$t0, 0 			# i = 0
while:
	bge 	$t0, 10, end_while

	mul 	$t1, $t0, 4  		# i * 4
	lw 	$t2, numbers($t1) 	# *(numbers + $t1)

if:
	bge 	$t2, 0, end_if

	add 	$t2, $t2, 42 		# num = num + 42
	mul 	$t1, $t0, 4		# i * 4
	sw 	$t2, numbers($t1)	# numbers[i] = $t2

end_if:

	add 	$t0, $t0, 1		# i++
	j 	while
end_while:


	.data
numbers:
	.word 	0 1 2 -3 4 -5 6 -7 8 9