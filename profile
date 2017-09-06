[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export EDITOR="nvim"
export ANDROID_HOME=/Users/brandon.johnson/Library/Android/sdk
export PATH=$PATH:/usr/local/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

export CLICOLOR=1
alias sp="source ~/.profile"
alias vim=nvim
alias a="atom ."
alias md="open -a 'Marked 2.app'"
export PS1='\u:\w \$ '
#export PS1='\u \$ '
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(direnv hook bash)"
source ~/.bin/tmuxinator.bash

if [[ $- == *i* ]]
then
      bind '"\e[A": history-search-backward'
      bind '"\e[B": history-search-forward'
      bind '"\e[1;3C": forward-word'
      bind '"\e[1;3D": backward-word'
fi

