#include <stdio.h>
#include <unistd.h>

int main(void) {
    FILE *fp = fopen("random", "a");
    if (fp == NULL) {
        printf("Failed to open file.");
        return 0;
    }
    int fd = fileno(fp);
    // 1 -> stdout
    dup2(fd, 1);

    fprintf(stderr, "something something123");
    // printf("abcdefghi");

    fclose(fp);
}