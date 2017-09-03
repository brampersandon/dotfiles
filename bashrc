# Remove aliases set previously
unalias -a

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#==============================================================================#
# History
#==============================================================================#

HISTSIZE=1000
HISTFILESIZE=2000

# Don't put duplicate lines in the history
HISTCONTROL=ignoredups:ignorespace

# Append to the history file, don't overwrite it
shopt -s histappend

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#==============================================================================#
# Prompt
#==============================================================================#

# print non-zero exit
_pnze() {
  local e=$1
  if [ "$e" -ne "0" ]; then
    echo "$e "
  fi
}

# print git branch
_pgb() {
  local txt=$(git branch 2>&1)
  local e=$?
  if [ "$e" -eq "0" ]; then
    local b=$(echo "$txt" | grep '*')
    echo " | ${b:2}"
  fi
}


PS1='$(_pnze $?)| \w$(_pgb)\n➤  '


#==============================================================================#
# Aliases
#==============================================================================#

# Use the best vim available.
if which nvim >/dev/null ; then
  alias vim="nvim"
elif which mvim >/dev/null ; then
  alias vim="mvim -v"
fi

# Always use LSCOLORS
alias ls="ls -G"

# ls -la with trailing / for directories
alias lsa="ls -lahp"

# Run a little server
alias server="python -m SimpleHTTPServer"

# List repos
alias repos="tree ~/code -L 2"


#==============================================================================#
# Path
#==============================================================================#

export PATH=~/bin:$PATH
export PATH=~/golang/bin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/node:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/24.0.0:$PATH

export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

export TERM=xterm-256color
export TERMINFO=~/.terminfo

export VISUAL=vim
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom'
fi

export GOPATH=~/golang
export LIBRARY_PATH="$LIBRARY_PATH:/opt/local/lib/"
eval "$(rbenv init -)"
eval "$(direnv hook bash)"
export ANSIBLE_INVENTORY=~/ansible_hosts
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
