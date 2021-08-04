# Practice how to convert C variables into MIPS data directives.
# uninitialised variable -> int a;
# initialised variable   -> int a = 0; int a = 1;

	.data
# prompt = "Enter a number:"
prompt:
	.asciiz	"Enter a number:"
# int u; -> uninitalised variable
u:
	.space 	4
# int v = 42; -> initialised variable
v:
	.word 	42
# char w; -> uninitialised
w:
	.space 	1
# char x = 'a'; 
x:
	.byte 	'a'
# double y;
y:
	.space 	8
# int z[20]; -> uninitialised
z:
	.space 	80
# int numbers = {0, 1, 2, 3};
numbers:
	.word 	0, 1, 2, 3
# char chs = {'a', 'b'};
chs:
	.byte 	'a', 'b'

