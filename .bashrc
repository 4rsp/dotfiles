#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias spotify='spotify-launcher --skip-update'

RED='\[\033[0;31m\]'
GREENY='\[\033[1;32m\]'
GREEN='\[\033[1;32m\]'
REDY='\[\033[1;31m\]'

NC='\[\033[0m\]' # resets color

# this is bad
# export PS1="\342\232\241${GREEN}\u${NC}\360\237\220\247\360\237\232\251${NC}\W$ "

export PS1="${GREENY}\u\360\237\220\247${NC}${REDY}=>${NC}${RED}\W$\[\033[0m\] "
# export LS_COLORS='di=0;34'   # Sets directories to something
export LS_COLORS='di=1;38'
PATH="$HOME/bin:$PATH"
