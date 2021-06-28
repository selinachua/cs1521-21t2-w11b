Address       Data Definition
0x10010000    aa:  	    .word 42     	# int aa =    
0x10010004    bb:  	    .word 666    	# int bb = 
0x10010008    numbers:  .word 1      	# int cc = 
0x1001000C    		    .word 3
0x10010010    		    .word 5
0x10010014    		    .word 7

# What address will be calculated, and what value will be loaded 
# into register $t0, after each of the following statements (or 
# pairs of statements)?
la   $t0, aa        # $t0 = 
lw   $t0, bb        # $t0 = 
lb   $t0, bb        # $t0 = 
lw   $t0, aa+4      # $t0 = 


la   $t1, cc        # $t1 = 
lw   $t0, ($t1)     # $t0 = 


la   $t1, numbers   # $t1 = 
lw   $t0, 12($t1)   # $t0 = 


li   $t1, 8         # $t1 = 
lw   $t0, cc($t1)   # $t0 = 
la   $t1, cc        # $t1 = 
lw   $t0, 2($t1)    # $t0 = 