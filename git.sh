function gstatus {
    git status
}

function gcheckout {
    if [[ ! -z "$1" ]]; then
        local branch="$1"
    else
        local branch="development"
    fi;

    git checkout "$branch"
}

function gadd {
    if [[ $# == 0 ]]; then
        local files="*"
    else
        local files="$@"
    fi

    git add $files
}

function gcommit {
    if [[ $# == 0 ]]; then
        git commit
    else
        echo "'$@'"
        git commit -m "$@"
    fi
}

function gpull {
    if [[ ! -z "$1" ]]; then
        local arguments="$@"
    else
        local arguments="origin"
    fi

    git pull $arguments
}

function gpush {
    git push
}
