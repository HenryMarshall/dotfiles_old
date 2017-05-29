# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

##### ENV VARIABLES #####
export EDITOR=vim
export BROWSER=google-chrome
export DE=generic
export XDG_CURRENT_DESKTOP=kde

##### IMPROVED BASH #####

# Color Palette
BASE16_SHELL="$HOME/bin/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Disable C-s and C-q stop start bindings
# http://unix.stackexchange.com/questions/12107/how-to-unfreeze-after-accidentally-pressing-ctrl-s-in-a-terminal
stty -ixon -ixoff

##### DEV TOOLS #####

# NVM (Node Version Manager)
export NVM_DIR="/home/henry/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/home/henry/.nvm/versions/node/v6.1.0/lib/node_modules

# RVM (Ruby Version Manager)
export PATH="$PATH:$HOME/.rvm/bin"
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem

# Node
export PATH="$PATH:$HOME/.node/bin"

# Android Developer Studio
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools:$HOME/Android/Sdk/tools"

##### SCRIPTS #####
# Can this be achieved by including bin in PATH? It seems no. Why?
source ~/bin/commacd.sh
source ~/bin/extract.sh
source ~/bin/mkcd.sh
source ~/bin/s.sh
source ~/bin/tmp.sh
source ~/bin/up.sh

# Git Prompt
GIT_PROMPT_START_USER="\n\e[32m\]\u@\h \e[33m\]\w\\e[0m\]"
GIT_PROMPT_END="\n\$ "
export PS1="$GIT_PROMPT_START_USER$GIT_PROMPT_END"

GIT_PROMPT_PATH="$HOME/.bash-git-prompt/gitprompt.sh"
if [ -f $GIT_PROMPT_PATH ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  source $GIT_PROMPT_PATH
fi

##### SENSIBLE DEFAULTS #####

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Combine multiline commands into one in history
shopt -s cmdhist

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    # colored GCC warnings and errors
    export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# exercism command completion
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

export PATH="/home/henry/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export instanceId=i-031f31bfc2e829eb7
