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

	read -p "What you want, dude or dudessa? (0 - exit; 1..21 - input) " software

	case $software in
		0)  echo "Abort..."; exit;;
		1)  install("bash");;
		2)  install("i3");;
		4)  install("mpv");;
		8)  install("nano");;
		16) install("sway");;
		32) install("xfce4-terminal");;
		#--#--#--#--#-###-#--#--#--#--#
		3)  install("bash", "i3");;
		5)  install("mpv", "bash");;
		6)  install("mpv", "i3");;
		7)  install("mpv", "bash", "i3");;
		9)  install("nano", "bash");;
		10) install("nano", "i3");;
		11) install("nano", "bash", "i3");;
		12) install("nano", "mpv");;
		13) install("nano", "mpv", "bash");;
		14) install("nano", "mpv", "i3");;
		15) install("nano", "mpv", "bash", "i3");;
		17) install("sway", "bash");;
		18) install("sway", "i3");;	# What reason you have for that
		19) install("sway", "bash", "i3");;
		20) install("sway", "mpv");;
		21) install("sway", "mpv", "bash");;
		22) install("sway", "mpv", "i3");;
		23) install("sway", "mpv", "bash", "i3");;
		24) install("sway", "bash");;
		25) install("sway", "i3");;

		*) echo "Not impelemented answer, aborting"; exit 1;;
	esac
}

exit
