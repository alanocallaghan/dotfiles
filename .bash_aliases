## Few handy ls aliases
alias ls="ls --color=auto"
alias l="ls"
alias la="ls -a"
alias ll="ls -lah"
alias lt="ls -laht"

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
alias gstp="git stash pop"
alias gsta="git stash apply"
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
alias grs="git-remind status"
alias grc='cd $(git remind status -n | fzf)'
alias gunmerged="git ls-files --unmerged | cut -f2 | uniq"
alias prettylog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

if command -v bat >/dev/null; then 
    alias cat=bat
    alias catp="cat -p"
    alias capt="cat -p"
fi

alias python="python3"
alias pip="pip3"
alias pls="sudo"

alias R-devel="/opt/R-devel/bin/R"
alias R-3.5="/opt/R-3.5/bin/R"
