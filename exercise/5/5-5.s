    .text
    .global _start

_start:
    la t0, _array
    lw t1, 0(t0)
    lw t2, 4(t0)

_array:
    .word 0x11111111
    .word 0xffffffff

stop:
    j stop
    .end