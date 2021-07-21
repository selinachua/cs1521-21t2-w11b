// print $HOME/.diary to stdout

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    // 1. We want to get the file name. ($HOME/.diary)
    char *home_pathname = getenv("HOME");
    char *diary = ".diary";
    // /Users/selina/.diary -> snprintf
    int len = strlen(home_pathname) + strlen(diary) + 2;
    char pathname[len];
    snprintf(pathname, len, "%s/%s", home_pathname, diary);

    // 2. We want to open the file. -> fopen
    FILE *fp = fopen(pathname, "r");
    if (fp == NULL) {
        printf("Could not open %s\n", pathname);
    }
    // 3. Print out file contents. -> fgetc, fputc
    char ch;
    while ((ch = fgetc(fp)) != EOF) {
        fputc(ch, stdout);
    }

    // 4. Close the file. -> fclose
    fclose(fp);

    return 0;
}