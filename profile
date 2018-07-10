if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export EDITOR="nvim"

export ANDROID_HOME="/usr/local/share/android-sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
CLICOLOR=1
alias sp="source ~/.profile"
alias vim=nvim
alias a="atom ."
alias vsc="code ."
alias md="open -a 'Marked 2.app'"
alias unfuck-rn="watchman watch-del-all && rm -rf $TMPDIR/react-* && rm -rf node_modules/ && yarn cache clean && yarn && rm -rf ios/build && yarn start --reset-cache"
alias lasthash="git rev-parse HEAD | cut -c1-7 | tr -d '\n'"
alias print-scripts="jq .scripts package.json"

# TERMINAL PROMPT CONFIG
BLUE="$(tput setaf 6)"
GRAY="$(tput setaf 8)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BOLD="$(tput bold)"
RESET="$(tput sgr0)"

export PS1='\[$GRAY\]▒\[$RESET\] \[$BOLD\]\[$BLUE\]\u\[$RESET\] \[$GRAY\]▒\[$RESET\] \[$BOLD\]\[$YELLOW\]\w\[$RESET\] \[$GRAY\]▒\[$RESET\] \[$RED\]»\[$RESET\] '

# PATH
export PATH="/usr/local/bin:$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
eval "$(direnv hook bash)"
eval "$(thefuck --alias)"

if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
    bind '"\e[1;3C": forward-word'
    bind '"\e[1;3D": backward-word'
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi
source /usr/local/opt/chruby/share/chruby/chruby.sh
