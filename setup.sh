#!/bin/sh
# WIP

if [ $EUID -eq 0 ]; then
	echo "This script should be not run as root." > /dev/stderr
	exit 1
fi

read -p "This script applies dotfiles, do you want to proceed? [Y/n] " yn

case $yn in
	[Yy]*) chooseWhatToDo(); break;;
	[Nn]*) echo "Abort..."; exit;;
	* ) echo "Not impelemented answer, choosing 'No'"; exit 1;;
esac
## Main stuff goes here down in the deep
chooseWhatToDo()
{
	echo "There's few kinds of software to choose: [bash/i3+status/mpv/nano/sway+waybar/xfce4-terminal]"
	echo "First (bash) is equal 1, next is 2 and so on. To choose multiple, summarize all of it to know"
	echo "what you wants exactly from script to do for you."

	read -p "What you want, dude or dudessa? (0 - exit; 1..55 - input) " software

	case $software in
		0) echo "Abort..."; exit;;
		1) 




		* ) echo "Not impelemented answer, aborting"; exit 1;;
	esac
}

exit
