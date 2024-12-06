    .text
    .global _start

_start:
    li x5, 1
    li x6, 2
    li x7, 3
    add x5, x5, x6
    sub x5, x5, x7

stop:
    j stop
    
    .end