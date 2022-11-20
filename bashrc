# ~/.bashrc: executed by bash(1) for non-login shells.
# See /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1000
export HISTFILESIZE=$HISTSIZE

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Include hidden file(s) with globbing too.
shopt -s dotglob

# Do not overwrite
set -o noclobber

# make less more friendly for non-text input files, see lesspipe(1)
#[[ -x /usr/bin/lesspipe ]] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color
case "$TERM" in
	xterm-color|*-256color) PS1='[\D{%-I:%M:%S %p}] \[\033[01;34m\]\W\[\033[00m\] \$ '
	;;
	*) PS1='[\D{%-I:%M:%S %p}] \W \$ '
	;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	[ -r ~/.dircolors ] && eval '$(dircolors -b ~/.dircolors)' || eval '$(dircolors -b)'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_functions ] && . ~/.bash_functions

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ ! shopt -oq posix ]; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

# Environment variables
export LANG=uk_UA.UTF-8
export LANGUAGE=uk_UA:en_US:en:C
export LC_TIME=en_US.UTF-8
export VISUAL=nano
export EDITOR=$VISUAL

# Autostart
[[ ! $SSH_TTY ]] && cls
neofetch
