# tmux
alias ta="tmux attach"
alias tc="vim ~/.tmux.conf"

# zsh
alias zp='vim ~/.zprofile'
alias szp='source ~/.zprofile'

# Git aliases
alias gfo='git fetch origin'
alias newb='git fetch origin && git checkout origin/master -b '
alias gl='git log --graph'
alias glm='git log --author=mihir'
alias gb='git branch --sort=-committerdate'
alias ga='git add -u .'
alias gcm='git commit -m'
alias gd='git diff'
alias gc='git checkout'
alias gsu='git submodule update --recursive'
alias amend='git commit --amend'
alias hist='git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'
alias act='source env/bin/activate'

# mihir
alias cf='cd ~/Dropbox/ProgrammingContest/codeforces'
alias topc='cd ~/Dropbox/ProgrammingContest/TopCoder'

DISABLE_AUTO_TITLE="true"
