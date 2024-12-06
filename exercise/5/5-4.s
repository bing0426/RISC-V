    .text
    .global _start

_start:
    li t0, 0x87654321
    slli t1, t0, 16
    srli t1, t1, 16
    srli t2, t0, 16

stop:
    j stop
    .end