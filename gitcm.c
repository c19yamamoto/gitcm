#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef WIN
#define LINE_ENDING "\r\n"
#else
#define LINE_ENDING "\n"
#endif

void show_help() {
    printf("Usage: gitcm <option> <your_commit_message>%s", LINE_ENDING);
    printf("Options:%s", LINE_ENDING);
    printf("  create: create a new file%s", LINE_ENDING);
    printf("  feat: A new feature%s", LINE_ENDING);
    printf("  fix: A bug fix%s", LINE_ENDING);
    printf("  docs: Documentation only changes%s", LINE_ENDING);
    printf("  style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)%s", LINE_ENDING);
    printf("  refactor: A code change that neither fixes a bug nor adds a feature%s", LINE_ENDING);
    printf("  perf: A code change that improves performance%s", LINE_ENDING);
    printf("  test: Adding missing or correcting existing tests%s", LINE_ENDING);
    printf("  chore: Changes to the build process or auxiliary tools and libraries such as documentation generation%s", LINE_ENDING);
    printf("  none: No prefix%s", LINE_ENDING);
}

int main(int argc, char *argv[]) {
    char cmd[512];
    if (argc != 3) {
        show_help();
        return 1;
    }

    char *option = argv[1];
    char *message = argv[2];

    if (strcmp(option, "create") == 0) {
        sprintf(cmd, "git commit -m \":seedling:create: %s\"", message);
    }
    else if (strcmp(option, "feat") == 0) {
        sprintf(cmd, "git commit -m \":sparkles:feat: %s\"", message);
    }
    else if (strcmp(option, "fix") == 0) {
        sprintf(cmd, "git commit -m \":bug:fix: %s\"", message);
    }
    else if (strcmp(option, "docs") == 0) {
        sprintf(cmd, "git commit -m \":memo:docs: %s\"", message);
    }
    else if (strcmp(option, "style") == 0) {
        sprintf(cmd, "git commit -m \":lipstick:style: %s\"", message);
    }
    else if (strcmp(option, "refactor") == 0) {
        sprintf(cmd, "git commit -m \":recycle:refactor: %s\"", message);
    }
    else if (strcmp(option, "perf") == 0) {
        sprintf(cmd, "git commit -m \":zap:perf: %s\"", message);
    }
    else if (strcmp(option, "test") == 0) {
        sprintf(cmd, "git commit -m \":rotating_light:test: %s\"", message);
    }
    else if (strcmp(option, "chore") == 0) {
        sprintf(cmd, "git commit -m \":wrench:chore: %s\"", message);
    }
    else if (strcmp(option, "none") == 0) {
        sprintf(cmd, "git commit -m \"%s\"", message);
    }
    else {
        printf("Invalid option%s", LINE_ENDING);
        return 1;
    }

    system(cmd);
    return 0;
}
