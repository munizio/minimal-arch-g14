#
# ~/.bashrc
#

PATH="$PATH:/$HOME/.bin:/$HOME/.local/bin"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias tree='tree --dirsfirst -C -L 2'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

MAKEFLAGS="-j$(nproc)"
export PROMPT_COMMAND="pwd > /tmp/whereami"
