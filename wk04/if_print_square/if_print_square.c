#include <stdio.h>

int main(void) {
    int x, y;
    printf("Enter a number: ");
    scanf("%d", &x);

    // it evaluates the condition, 
    // ! x >= 46340, it branches to else
    // x < 46340, branch to else
    // x = 46340; 
    if (x >= 46340) {
        printf("square too big for 32 bits\n");
    } else {
        y = x * x;
        printf("%d\n", y);
    }
    
    return 0;
}

if (x < 46340) goto else 
    printf(...)
    goto endif
else 
    y = x * x;
    printf(...)
endif