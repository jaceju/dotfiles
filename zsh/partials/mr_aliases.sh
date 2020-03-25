getRepoUrl() {
    local name='origin'
    local gitUrl
    local repoUrl

    if [ ! -z "$1" ]; then
        name="$1"
    fi

    gitUrl=`git remote get-url $name`
    repoUrl=`php -r "echo str_replace([':', 'git@', '.git'], ['/', 'https://', ''], '${gitUrl}'); echo PHP_EOL;"`

    echo $repoUrl
}

openGitRepo() {
    local repoUrl

    repoUrl=`getRepoUrl $1 $2 $3 $4`
    echo "Open" $repoUrl

    open $repoUrl
}

openGitRepoIssuesPage() {
    local repoUrl

    repoUrl=`getRepoUrl $1 $2 $3 $4`
    echo "Open" $repoUrl/issues

    open $repoUrl/issues
}

openGitRepoBoardsPage() {
    local repoUrl

    repoUrl=`getRepoUrl $1 $2 $3 $4`
    echo "Open" $repoUrl/boards

    open $repoUrl/boards
}

openGitMrPage() {
    local repoUrl

    repoUrl=`getRepoUrl $1 $2 $3 $4`
    echo "Open" $repoUrl/merge_requests

    open $repoUrl/merge_requests
}

openGitTagPage() {
    local repoUrl

    repoUrl=`getRepoUrl $1 $2 $3 $4`
    echo "Open" $repoUrl/tags

    open $repoUrl/tags
}

openGitPipelinePage() {
    local repoUrl

    repoUrl=`getRepoUrl $1 $2 $3 $4`
    echo "Open" $repoUrl/pipelines

    open $repoUrl/pipelines
}

openGitMR() {
    local repoUrl

    repoUrl=`getRepoUrl`
    echo $1 $2
    echo "Open" $repoUrl/merge_requests/new\?utf8\=✓\&merge_request\[source_branch\]\=$1\&merge_request\[target_branch\]\=$2

    open $repoUrl/merge_requests/new\?utf8\=✓\&merge_request\[source_branch\]\=$1\&merge_request\[target_branch\]\=$2
}

# Open repo
alias currentBr='git rev-parse --abbrev-ref HEAD'
alias ru='git remote get-url origin'
alias ro='openGitRepo'
alias roi='openGitRepoIssuesPage'
alias rob='openGitRepoBoardsPage'
alias roc='getRepoUrl | copy; echo "Copyied: "`getRepoUrl`'
alias rom='openGitMrPage'
alias romed='mred'
alias rot='openGitTagPage'
alias rop='openGitPipelinePage'
alias mr='open `getRepoUrl`/merge_requests'
alias mred='open `getRepoUrl`/merge_requests\?scope\=all\&utf8\=✓\&state\=merged'
alias mrcs='openGitMR `currentBr` staging'
alias mrct='openGitMR `currentBr` testing'
alias mrts='openGitMR testing staging'
alias mrsm='openGitMR staging master'

# pbcopy
alias copy="tr -d '\n' | pbcopy"
alias ruc='roc'
alias brc='echo `currentBr` | copy; echo "Copied: `pbpaste`"'
alias bru='echo `currentBr` | copy; echo "Copied: `pbpaste`"'
