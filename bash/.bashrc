#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Infinite bash history
HISTSIZE=-1
HISTFILESIZE=-1

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# setup starship:
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init bash)"

alias cd="z"
