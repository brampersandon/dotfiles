[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export PATH=$PATH

CLICOLOR=1
alias sp="source ~/.profile"

# TERMINAL PROMPT CONFIG
BLUE="$(tput setaf 6)"
GRAY="$(tput setaf 8)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BOLD="$(tput bold)"
RESET="$(tput sgr0)"

export PS1='\[$GRAY\]▒\[$RESET\] \[$BOLD\]\[$RED\]\u@\h\[$RESET\] \[$GRAY\]▒\[$RESET\] \[$BOLD\]\[$YELLOW\]\w\[$RESET\] \[$GRAY\]▒\[$RESET\] \[$BLUE\]»\[$RESET\] '

# PATH
export PATH="/usr/local/bin:$HOME/.cargo/bin:$PATH"

if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
    bind '"\e[1;3C": forward-word'
    bind '"\e[1;3D": backward-word'
fi

source /usr/local/share/chruby/chruby.sh
