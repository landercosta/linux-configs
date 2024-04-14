#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# My alias
# alias zutasks
alias zutasks="cd ~/Dropbox/zuTasks;python3 zuTasks.py"
alias configQtile="nvim ~/.config/qtile/config.py"
alias reloadQtile="qtile cmd-obj -o cmd -f reload_config"
