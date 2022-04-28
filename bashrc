#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

shopt -s dotglob
LANG=uk_UA.UTF-8

neofetch

PS1='\W \$ '
