function gitcm(){
    # help message
    if($args.Length -ne 2){
        $msg= "Usage: gitcm <option> <your_commit_message>`r`n`n"`
            +"Options:`r`n"`
            + "  create: create a new file`r`n"`
            + "  feat: A new feature`r`n"`
            + "  fix: A bug fix`r`n"`
            + "  docs: Documentation only changes`r`n"`
            + "  style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)`r`n"`
            + "  refactor: A code change that neither fixes a bug nor adds a feature`r`n"`
            + "  perf: A code change that improves performance`r`n"`
            + "  test: Adding missing or correcting existing tests`r`n"`
            + "  chore: Changes to the build process or auxiliary tools and libraries such as documentation generation`r`n"`
            + "  none: No prefix"
        Write-Output $msg
        return
    }
    If($args[0] -eq "create"){
        $msg=":seedling:create: "+$args[1]
    }
    ElseIf($args[0] -eq "feat"){
        $msg=":sparkles:feat: "+$args[1]
    }
    ElseIf($args[0] -eq "fix"){
        $msg=":bug:fix: "+$args[1]
    }
    ElseIf($args[0] -eq "docs"){
        $msg=":memo:docs: "+$args[1]
    }
    ElseIf($args[0] -eq "style"){
        $msg=":lipstick:style: "+$args[1]
    }
    ElseIf($args[0] -eq "refactor"){
        $msg=":recycle:refactor: "+$args[1]
    }
    ElseIf($args[0] -eq "perf"){
        $msg=":zap:perf: "+$args[1]
    }
    ElseIf($args[0] -eq "test"){
        $msg=":rotating_light:test: "+$args[1]
    }
    ElseIf($args[0] -eq "chore"){
        $msg=":wrench:chore: "+$args[1]
    }
    ElseIf($args[0] -eq "none"){
        $msg=$args[1]
    }
    Else{
        Write-Output "Invalid option"
        return
    }
    git commit -m "$msg"
    return
}