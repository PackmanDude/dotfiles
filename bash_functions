# find without access errors display
function find-silently()
(
	/usr/bin/env find "$@" 2>/dev/null
)

# ls Largest Files
function lslf()
(
	du -hxs -- * | sort -hr | head -"$1"
)

# nano
function nano()
(
	nano='/usr/bin/env nano'

	[ "$*" = *.java ] || [ "$*" = *'.java '* ] \
	&& $nano "$@" -J 120 \
	|| $nano "$@"
)

# nazi
function nazi()
(
	sed 's/[A-Za-z]/卐/g'
)

# Implementing a new function be like
function tohex()
(
	xxd -u -i -- < <(echo "$@") | sed -e 's/,//g' -e 's/0X/\\x/g' \
	-e 's/ //g' | paste -sd ''
)

# Issue disk sleep mode
function sleepsda()
(
	sudo umount /dev/sda?; sudo hdparm -Y /dev/sda
)

# Sum given arguments
function sumargs()
(
	selector="$0 $@"
	[ x"$1"x = xx ] && selector="$(< /dev/stdin)"
	for i in $selector; do sum=$((sum + i)); done; echo $sum
)
