# ~/.bashrc: executed by bash(1) for non-login shells.
# See /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set tabs width size
tabs -4

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=-1
export HISTFILESIZE=$HISTSIZE

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
[[ $DISPLAY ]] && shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Include hidden file(s) with globbing too.
#shopt -s dotglob
GLOBIGNORE=".:.."

# Do not overwrite
set -o noclobber

# Carry pipe exit code (if !=0)
set -o pipefail

set completion-query-items 99999

# make less more friendly for non-text input files, see lesspipe(1)
#[[ -x /usr/bin/lesspipe ]] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color
case "$TERM" in
	xterm-color|*-256color) PS1='\[\e[1;34m\]\W\[\e[m\] \$ '
	;;
	*) PS1='\W \$ '
	;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	if [ -r ~/.dircolors ]; then
		eval "$(dircolors -b ~/.dircolors)"
	else
		eval "$(dircolors -b)"
	fi
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
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

# Show elapsed time for a previous command
function _timer_start()
{
	timer=${timer:-$SECONDS}
}

function _timer_stop()
{
	local ret=$? formatted_timer
	local elapsed_time=$((SECONDS - timer))
	if [ $elapsed_time -ge 86400 ]; then
		formatted_timer="~$((elapsed_time/86400))d$((elapsed_time%86400/3600))h$((elapsed_time%3600/60))m$((elapsed_time%60))s passed"
	elif [ $elapsed_time -ge 3600 ]; then
		formatted_timer="~$((elapsed_time%86400/3600))h$((elapsed_time%3600/60))m$((elapsed_time%60))s passed"
	elif [ $elapsed_time -ge 60 ]; then
		formatted_timer="~$((elapsed_time%3600/60))m$((elapsed_time%60))s passed"
	else
		formatted_timer="~${elapsed_time}s passed"
	fi

	if [ $elapsed_time -gt 0 ]; then
		if [ $ret -ne 0 ]; then
			echo -e "\e[1;31m$formatted_timer\e[m"
			unset timer
			return
		fi
		echo -e "\e[1;32m$formatted_timer\e[m"
	elif [ $ret -ne 0 ]; then
		echo -e "\e[1;31m$formatted_timer\e[m"
	fi
	unset timer
}
trap '_timer_start' DEBUG
export PROMPT_COMMAND=_timer_stop

# Environment variables
export VISUAL=nano
export EDITOR=$VISUAL

# Autorun
neofetch
