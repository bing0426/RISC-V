    .text
    .global _start

_start:
    la sp, stack_end
    li a0, 3
    jal sum_squares
    mv t0, a0 
stop:
    j stop

sum_squares:
    addi sp, sp, -16
    sw s0, 0(sp)
    sw s1, 4(sp)
    sw ra, 8(sp)
    sw s2, 12(sp)

    mv s0, a0
    li s1, 1
    li s2, 0
loop:
    bgt s1, s0, back
    jal square
    addi s1, s1, 1
    add s2, s2, a0 
    j loop
back:
    mv a0, s2
    lw s0, 0(sp)
    lw s1, 4(sp)
    lw ra, 8(sp)
    lw s2, 12(sp)
    addi sp, sp, 16
    ret

square:
    addi sp, sp, -8
    sw s0, 0(sp)
    sw s1, 4(sp)
    
    mv s0, s1 
    mul s1, s0, s0
    mv a0, s1

    lw s1, 4(sp)
    lw s0, 0(sp)
    addi sp, sp, 8
    ret
stack_start:
    .rept 12
    .word 0
    .endr
stack_end:

    .end