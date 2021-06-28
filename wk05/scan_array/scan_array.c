#include <stdio.h>

int main(void) {
    int i;
    int numbers[10];
    
    i = 0;
    while (i < 10) {
        int scanned;
        scanf("%d", &scanned);
        numbers[i] = scanned;
        i++;
    }
    
    return 0;
}