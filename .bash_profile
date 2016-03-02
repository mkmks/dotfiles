if [ -f $HOME/.profile ]; then
    . $HOME/.profile
fi

if [ -f $NIX_LINK/etc/bash_completion ]; then
    . $NIX_LINK/etc/bash_completion
fi

export HISTCONTROL=ignoreboth
export HISTFILESIZE=100000
shopt -s histappend
shopt -s checkwinsize

export PS1="\W \$ "
export EDITOR="vi"

# enable color support of ls and also add handy aliases
if [ -x $NIX_LINK/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

alias scpresume="rsync --partial --progress --rsh=ssh"
alias tmux="tmux attach || tmux new"
alias e="emacsclient -t "
alias ec="emacsclient -c -n "