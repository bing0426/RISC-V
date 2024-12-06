    .data
arr:
    .word 'h'
    .word 'e'
    .word 'l'
    .word 'l'
    .word 'o'
    .word ','
    .word 'w'
    .word 'o'
    .word 'r'
    .word 'l'
    .word 'd'
    .word '\0'

    .text
    .global _start
_start:
    la t0, arr#加载一个地址值
    li t1, '\0'
    lb t2, 0(t0)
    bne t2, t1, loop 
loop:
    addi t0, t0, 4
    lb t2, 0(t0)
    bne t2, t1, loop    

stop:
    j stop
    .end