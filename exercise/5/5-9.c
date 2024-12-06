#include <stdio.h>

int foo(int a, int b){
    int c;
    asm volatile(
        "mul t0, %[i1], %[i1]\n\t"
        "mul t1, %[i2], %[i2]\n\t"
        "add %[res], t0, t1\n\t"
        :[res]"=r"(c)
        :[i1]"r"(a), [i2]"r"(b)
        : "t0", "t1"
    );
    return c;
}

int main(){
    printf("%d\n", foo(1, 2));
    return 0;
}
/*
qemu-riscv64: Could not open '/lib/ld-linux-riscv64-lp64d.so.1': No such file or directory
解决办法 qemu-riscv64 -L /usr/riscv64-linux-gnu
*/