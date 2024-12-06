#include <stdio.h>

union data
{
    unsigned int i;
    struct{
        unsigned short low;
        unsigned short up;
    };
};


int main(){
    //0x87654321，先编写 c 程序，将其低 16 位 (0x4321) 和⾼ 16 位 (0x8765)
    union data d = {0x87654321};
    printf("%x\n", d.i);
    printf("%x\n", d.up);
    printf("%x\n", d.low);
    return 0;
}