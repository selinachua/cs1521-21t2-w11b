#include <stdio.h>

int main(void) {
    for (int x = 24; x < 42; x += 3) {
        printf("%d\n",x);
    }
    return 0;
}

// WHILE VERSION
int main(void) {
    int x = 24;
    while (x < 42) {
        printf("%d", x);
        printf("\n");
        x += 3;
    }
    return 0;
}




int main(void) {
    int x = 24;

    loop:
    if (x >= 42) goto end;

        printf("%d", x);
        printf("%c", '\n');

        x += 3;

        goto loop;
    end:

    return 0;
}


int i = 0;
while (i < ...) {
    int j = 0;
    while (j < ???) {
        !!!!!!
        j++;
    }

    i++;
}