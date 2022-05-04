#!bin/bash
gitcm () {
    # help message
    if [ $# -ne 2 ]; then
        msg=("Usage: gitcm <option> <your_commit_message>\n\n")
        msg+=("Options:\n")
        msg+=("  create: create a new file\n")
        msg+=("  feat: A new feature\n")
        msg+=("  fix: A bug fix\n")
        msg+=("  docs: Documentation only changes\n")
        msg+=("  style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)\n")
        msg+=("  refactor: A code change that neither fixes a bug nor adds a feature\n")
        msg+=("  perf: A code change that improves performance\n")
        msg+=("  test: Adding missing or correcting existing tests\n")
        msg+=("  chore: Changes to the build process or auxiliary tools and libraries such as documentation generation\n")
        msg+=("  none: No prefix")
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
        msg=":memo:docs: $2"
    elif [ "$1" = "style" ]; then
        msg=":lipstick:style: $2"
    elif [ "$1" = "refactor" ]; then
        msg=":recycle:refactor: $2"
    elif [ "$1" = "perf" ]; then
        msg=":zap:perf: $2"
    elif [ "$1" = "test" ]; then
        msg=":rotating_light:test: $2"
    elif [ "$1" = "chore" ]; then
        msg=":wrench:chore: $2"
    elif [ "$1" = "none" ]; then
        msg="$2"
    else
        echo "Invalid option"
        return
    fi
    git commit -m "$msg"
    return
}