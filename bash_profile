# Git aliases
alias gc='git checkout'
alias gd='git diff'
alias gl='git log --graph'
alias glm='git log --author=mihir'
alias gb='git branch'
alias ga='git add -u .'
alias modified=$'git status | grep modified | awk \'{print $3}\''

# General shortcuts
alias gr='grep'
alias ta='tmux attach'
alias cgb="git branch | grep -E '^\*' | awk '{print $2}'"

# Add a new line to the shell prompt
PS1=$PS1"\n:) "

mkcd () { mkdir -p "$1" && cd "$1"; }

# Forward SSH across tmux
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    rm -f /tmp/ssh-agent-$USER-screen
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

# Pressing Ctrl-S causes my keystrokes to stop being processed. This prevents that.
stty ixany
stty ixoff -ixon
