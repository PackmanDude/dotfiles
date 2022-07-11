#!/bin/sh
# WIP

if [ $EUID -eq 0 ]; then
	echo "This script should be not run as root." > /dev/stderr
	exit 1
fi

read -p "This script applies dotfiles, do you want to proceed? [Y/n] " yn

case $yn in
	[Yy]*)	chooseWhatToDo();
			break
	;;

	[Nn]*)	echo "Abort...";
			exit
	;;

	*)		echo "Not impelemented answer, choosing 'No'";
			exit 1
	;;
esac

## Main stuff goes here down in the deep
ChooseWhatToDo()
{
	echo "There's few kinds of software to choose: [bash/i3+status/mpv/nano/sway+waybar/xfce4-terminal]"
	echo "First (bash) is equal 1, next is 2 and so on. To choose multiple, summarize all of it to know"
	echo "what you wants exactly from script to do for you."

	bash=1
	i3=2
	mpv=4
	nano=8
	sway=16
	xfce4-term=32

	read -p "What you want, dude or dudessa? (0 - exit; 1..63 - input) " software

	case $software in
		0)	echo "Abort..."; exit;;
		1)	install $bash;;
		2)	install $i3;;
		3)	install $i3 $bash;;
		4)	install $mpv;;
		5)	install $mpv $bash;;
		6)	install $mpv $i3;;
		7)	install $mpv $i3 $bash;;
		8)	install $nano;;
		9)	install $nano $bash;;
		10)	install $nano $i3;;
		11)	install $nano $i3 $bash;;
		12)	install $nano $mpv;;
		13)	install $nano $mpv $bash;;
		14)	install $nano $mpv $i3;;
		15)	install $nano $mpv $i3 $bash;;
		16)	install $sway;;
		17)	install $sway $bash;;
		18)	install $sway $i3;;		# What purpose you have for that
		19)	install $sway $i3 $bash;;
		20)	install $sway $mpv;;
		21)	install $sway $mpv $bash;;
		22)	install $sway $mpv $i3;;
		23)	install $sway $mpv $i3 $bash;;
		24)	install $sway $nano;;
		25)	install $sway $nano $bash;;
		26)	install $sway $nano $i3;;
		27)	install $sway $nano $i3 $bash;;
		28)	install $sway $nano $mpv;;
		29)	install $sway $nano $mpv $bash;;
		30)	install $sway $nano $mpv $i3;;
		31)	install $sway $nano $mpv $i3 $bash;;
		32)	install $xfce4-term;;
		33)	install $xfce4-term $bash;;
		34)	install $xfce4-term $i3;;
		35)	install $xfce4-term $i3 $bash;;
		36)	install $xfce4-term $mpv;;
		37)	install $xfce4-term $mpv $bash;;
		38)	install $xfce4-term $mpv $i3;;
		39)	install $xfce4-term $mpv $i3 $bash;;
		40)	install $xfce4-term $nano;;
		41)	install $xfce4-term $nano $bash;;
		42)	install $xfce4-term $nano $i3;;
		43)	install $xfce4-term $nano $i3 $bash;;
		44)	install $xfce4-term $nano $mpv;;
		45)	install $xfce4-term $nano $mpv $bash;;
		46)	install $xfce4-term $nano $mpv $i3;;
		47)	install $xfce4-term $nano $mpv $i3 $bash;;
		48)	install $xfce4-term $sway;;
		49)	install $xfce4-term $sway $bash;;
		50)	install $xfce4-term $sway $i3;;
		51)	install $xfce4-term $sway $i3 $bash;;
		52)	install $xfce4-term $sway $mpv;;
		53)	install $xfce4-term $sway $mpv $bash;;
		54)	install $xfce4-term $sway $mpv $i3;;
		55)	install $xfce4-term $sway $mpv $i3 $bash;;
		56)	install $xfce4-term $sway $nano;;
		57)	install $xfce4-term $sway $nano $bash;;
		58)	install $xfce4-term $sway $nano $i3;;
		59)	install $xfce4-term $sway $nano $i3 $bash;;
		60)	install $xfce4-term $sway $nano $mpv;;
		61)	install $xfce4-term $sway $nano $mpv $bash;;
		62)	install $xfce4-term $sway $nano $mpv $i3;;
		63)	install $xfce4-term $sway $nano $mpv $i3 $bash;;
		*)	echo "Not impelemented answer, aborting"; exit 1;;
	esac
}

Install()
{
	for i in 6
	do
		for i in $#
		do
			case $i in
				
		done
	done

}

exit
