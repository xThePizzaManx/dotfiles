#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

color1="\[$(tput setaf 2)\]"
color2="\[$(tput setaf 5)\]"
color3="\[$(tput setaf 69)\]"
reset="\[$(tput sgr0)\]"

export PS1="${color1}\u@\h ${color2}\\w ${color3}\$(git branch 2>/dev/null | grep '^*' | colrm 1 2) ${reset}"

set -o vi

export PATH=$PATH:~/.local/bin
