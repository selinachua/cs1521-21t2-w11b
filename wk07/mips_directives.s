# Give MIPS directives to represent the following variables:

	.data
# int v0; -> uninitialised
v0:
	.space 	4
# int v1 = 42; -> initialised 
v1:
	.word 	42
# char v2; -> un
v2:
	.space 	1
# char v3 = 'a';
v3:
	.byte 	'a'
# double v4;
	.align 	3
v4:
	.space 	8
# int v5[20]; 
v5:
	.space 	80
# int v6[10][5]; 
v6:
	.space 	200
# struct { int x; int y; } v7;
v7:
	.space 	8
# int arr[10];
# struct { int x; int y; } v8[4];
v8:
	.space 	32
# struct { int x; int y; } *v9[4];
v9:
	.space	16