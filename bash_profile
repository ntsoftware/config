PATH=$PATH:~/Library/Android/sdk/platform-tools

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# configure bash prompt

RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
MAGENTA='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
WHITE='\[\033[0;37m\]'
RESET='\[\033[0m\]'

parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

PS1="\u@\h:\W$GREEN\$(parse_git_branch)$RESET\$ "
