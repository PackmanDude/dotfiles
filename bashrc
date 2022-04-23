#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Functions
if [ -f ~/.bash_functions ]; then
	source ~/.bash_functions
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

LANG=uk_UA.UTF-8
shopt -s dotglob

neofetch

PS1='\W \$ '
