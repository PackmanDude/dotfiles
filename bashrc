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

# PATH additions
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

pridefetch -f trans

shopt -s dotglob

PS1='\W \$ '
