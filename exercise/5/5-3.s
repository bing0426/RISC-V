

    .text
    .global _start

_start:
    li x5, 1
    li x6, 2
    li x7, 3
    li t3,4
    add t4, x5, x6
    add t5, x7, t3
    sub t4, t4, t5

stop:
    j stop

    .end