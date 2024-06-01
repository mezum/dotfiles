# ~/.bashrc

# ignore non iteractive shell
[[ $- != *i* ]] && exit
SRCDIR="$(cd "$(dirname "$(readlink "${BASH_SOURCE:-$0}")")"; pwd)"

# coloring
alias ls='ls --color=auto'
alias grep='ls --color=auto'

# node
[[ -r "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
[[ -r "$NVM_DIR/bash_completion" ]] && . "$NVM_DIR/bash_completion"

# interface
alias gui='startplasma-wayland'
PS1='[\u@\h \W]\$ '
