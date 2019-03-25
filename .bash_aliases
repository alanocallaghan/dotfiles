## Few handy ls aliases
alias ls="ls --color=auto"
alias l="ls"
alias la="ls -a"
alias ll="ls -lah"
alias lt="ll -t"

## Copy to clipboard
alias cv="xclip -selection c"
## Viewing mounted disks
alias mnt="mount | column -t"

## View devices on local network
alias scan='nmap -sn "$(hostname -I)/24"'

## github extension
alias git="hub"
## git commands
alias gs="git status "
alias gss="git stash save"
alias gsp="git stash pop"
alias gsa="git stash apply"
alias ga="git add "
alias gc="git commit "
alias gp="git pull "
alias gd="git diff "
alias gdw="git diff -w"
alias gpu="git push"
alias gco="git checkout "
alias gr="git reset"
alias gb="git branch"
alias gf="git fetch"
alias gl="git log"
alias gsh="git show"
alias gm="git merge"
alias grb="git rebase"
alias gitlog='git log --pretty=format:"%h[%cr, %cn]>> %s" --graph'
alias gbp="git branch --merged | egrep -v '(^\*|master)' | xargs -r git branch -d"
alias gre="git remote"
alias gcp="git cherry-pick"
alias gi="git init"
alias ggc="git gc"
alias gt="git tag"
alias grvt="git revert"
alias gcn="git clone"
alias gitobjects="git rev-list --objects --all | git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' | sed -n 's/^blob //p' | sort --numeric-sort --key=2 | cut -c 1-12,41- | numfmt --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest"
alias grms="git-remind status"
alias grmc='cd $(git remind status -n | fzf)'

if command -v bat >/dev/null; then 
    alias cat=bat; 
fi
