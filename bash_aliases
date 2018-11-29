if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G'
    alias ll='ls -G -l'
    alias la='ls -G -la'
else
    alias ls='ls --color=auto'
    alias ll='ls --color=auto -l'
    alias la='ls --color=auto -la'
fi

alias gd='git diff'
alias gl='git log'
alias gs='git status'
alias df='df -h'
alias du='du -h'

alias grep='grep --color=auto'
