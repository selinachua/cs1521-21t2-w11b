# $t0: i
	.text
main:
	li 	$t0, 0 		# i = 0;
while_start:
	add 	$t0, $t0, 1	# i++;

	li 	$v0, 1
	move 	$a0, $t0
	syscall 		# printf("%d")

	li 	$v0, 11
	li 	$a0, '\n'
	syscall 		# printf("\n")

	# bge 	$t0, 10, while_end
	# j 	while_start
	blt 	$t0, 10, while_start

while_end:

	li 	$v0, 0
	jr 	$ra		# return 0;