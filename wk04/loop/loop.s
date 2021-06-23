        .text
# $t0 = x
main:
        li      $t0, 24         # $t0 = 24
loop:
        bge     $t0, 42, end_loop

        li      $v0, 1
        move    $a0, $t0        # $a0 = $t0
        syscall

        li      $v0, 11
        li      $a0, '\n'
        syscall 

        add     $t0, $t0, 3     # $t0 = $t0 + 3

        j       loop

end_loop:
        jr      $ra             # return;

        .data


        li      $t0, 0          # i = 0;
loop:
        bge     $t0, ..., end_loop

        li      $t1, 0          # j = 0;
loop2:
        bge     $t1, ???, end_loop2

        !!!!!!!

        add     $t1, $t1, 1
        j       loop2
end_loop2:

        add     $t0, $t0, 1     # i++
        j       loop
end_loop: