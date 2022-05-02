#!bin/bash
gitcm () {
    # help message
    if [ $# -ne 2 ]; then
        msg= "Usage: gitcm <option> <your_commit_message>\n\n
            Options:\n
              create: create a new file\n
              feat: A new feature\n
              fix: A bug fix\n
              docs: Documentation only changes\n
              style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)\n
              refactor: A code change that neither fixes a bug nor adds a feature\n
              perf: A code change that improves performance\n
              test: Adding missing or correcting existing tests\n
              chore: Changes to the build process or auxiliary tools and libraries such as documentation generation\n
              none: No prefix"
        echo -e $msg
        return 
    fi

    if [ "$1" = "create" ]; then 
        msg=":seedling:create: $2"
    elif [ "$1" = "feat" ]; then 
        msg=":sparkles:feat: $2"
    elif [ "$1" = "fix" ]; then
        msg=":bug:fix: $2"
    elif [ "$1" = "docs" ]; then
        msg=":books:docs: $2"
    elif [ "$1" = "style" ]; then
        msg=":art:style: $2"
    elif [ "$1" = "refactor" ]; then
        msg=":recycle:refactor: $2"
    elif [ "$1" = "perf" ]; then
        msg=":tada:perf: $2"
    elif [ "$1" = "test" ]; then
        msg=":test:test: $2"
    elif [ "$1" = "chore" ]; then
        msg=":hammer:chore: $2"
    elif [ "$1" = "none" ]; then
        msg="$2"
    else
        msg="$2"
    fi
    git commit -m "$msg"
    return
}