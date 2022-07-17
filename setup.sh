#!/bin/sh
# WIP

if [ $EUID -eq 0 ]; then
	echo "This script should be not run as root user." > /dev/stderr
	exit 13	# EACCES
fi

read -p "This script applies dotfiles, do you want to proceed? (it will ask later, what things to apply) [Y/n] " yn

case $yn in
	[Yy]*)	ChooseWhatToDo();
			break
	;;

	[Nn]*)	echo "Aborting";
			exit
	;;

	*)		echo "Not impelemented answer, choosing 'No'";
			exit 5 # EIO
	;;
esac

ChooseWhatToDo()
{
	echo "There's a few kinds of software to choose: [bash/i3+status/mpv/nano/xfce4-terminal]"
	echo "First (bash) is equal 1, next is 2 and so on. To choose multiple, summarize all of"
	echo "them to let script know what you want exactly."

	bash=1
	i3=2
	mpv=4
	nano=8
	xfce4-term=16

	read -p "(1..31 - input; 0 - exit) Choose: " software

	case $software in
		0)	echo "Aborting"; exit;;
		1)	Install $bash;;
		2)	Install $i3;;
		3)	Install $bash $i3;;
		4)	Install $mpv;;
		5)	Install $mpv $bash;;
		6)	Install $mpv $i3;;
		7)	Install $mpv $bash $i3;;
		8)	Install $nano;;
		9)	Install $nano $bash;;
		10)	Install $nano $i3;;
		11)	Install $nano $bash $i3;;
		12)	Install $nano $mpv;;
		13)	Install $nano $mpv $bash;;
		14)	Install $nano $mpv $i3;;
		15)	Install $nano $mpv $bash $i3;;
		16)	Install $xfce4-term;;
		17)	Install $xfce4-term $bash;;
		18)	Install $xfce4-term $i3;;
		19)	Install $xfce4-term $bash $i3;;
		20)	Install $xfce4-term $mpv;;
		21)	Install $xfce4-term $mpv $bash;;
		22)	Install $xfce4-term $mpv $i3;;
		23)	Install $xfce4-term $mpv $bash $i3;;
		24)	Install $xfce4-term $nano;;
		25)	Install $xfce4-term $nano $bash;;
		26)	Install $xfce4-term $nano $i3;;
		27)	Install $xfce4-term $nano $bash $i3;;
		28)	Install $xfce4-term $nano $mpv;;
		29)	Install $xfce4-term $nano $mpv $bash;;
		30)	Install $xfce4-term $nano $mpv $i3;;
		31)	Install $xfce4-term $nano $mpv $bash $i3;;
		*)	echo "Not impelemented answer, aborting";
			exit 5 # EIO
		;;
	esac
}

Install()
{
	for i in {1..5}
	do
		for i in {0..$($#-1)}
		do
			case $i in
				# WIP
			esac
		done
	done
}
