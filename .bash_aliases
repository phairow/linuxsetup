alias xterm='xterm -fbx -ls &'

export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTSIZE=10240
export HISTTIMEFORMAT='%F %T'

PS1="\[\033[0;31m\]\u\[\033[0;37m\]@\[\033[0;31m\]\h \[\033[0;36m\]\w\[\033[0;37m\] :\[\033[0m\]"

#make sure directory colors work
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=vim

set -o vi
set editing-mode vi
set keymap vi
set convert-meta on

# ^p check for partial match in history
bind -m vi-insert "\C-p":dynamic-complete-history
 
# ^n cycle through the list of partial matches
bind -m vi-insert "\C-n":menu-complete

# ^l clear screen
bind -m vi-insert "\C-l":clear-screen

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
