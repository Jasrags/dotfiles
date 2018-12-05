# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'

alias gap='git add -p'

alias fup='git checkout master && git fetch upstream && git merge upstream/master && git push'
alias ghc='git fetch -p'

# Delete all local and remote branches that are merged to master
alias githc='git checkout master && git pull && git remote update origin --prune && git branch -ar --merged master | grep -v HEAD | grep -v master | grep -v staging | sed "s/origin\///" | xargs -n 1 git push origin --delete && git checkout master && git pull && git branch --merged master | grep -v "master" | grep -v "staging" | xargs -n 1 git branch -d '
alias ge='git-edit-new'
