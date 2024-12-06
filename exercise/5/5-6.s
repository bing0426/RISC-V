.macro set_struct s, a, b
    la t0, \s
    lw \a, 0(t0)
    lw \b, 4(t0)
.endm

.macro get_struct s, a, b
    la t0, \s
    sw \a, 0(t0)
    sw \b, 4(t0)
.endm

    .data
s:
    .word 0
    .word 0

    .text
    .global _start
_start:
    #register unsigned int a = 0x12345678;
    #register unsigned int b = 0x87654321;
    li t1, 0x12345678
    li t2, 0x87654321
    set_struct s, t1, t2
    li t1, 0
    li t2, 0
    get_struct s, t1, t2
stop:
    j stop
    .end