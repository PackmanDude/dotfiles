# ls Largest Files
function lslf()
(
	du -hxs -- "$1"* | sort -hr | head -"$2"
)

# nano
function nano()
(
	nano='/usr/bin/env nano'
	if [ "$*" != "${*/java/}" ]; then $nano "$@" -J 150
	else $nano "$@"
	fi
)

# nazis bad
function nazify()
(
	sed 's/[A-Za-z]/卐/g' "${1:--}"
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
	selector="$0 $*"
	[ "$1" = "" ] && selector="$(</dev/stdin)"
	for i in $selector; do sum=$((sum + i)); done; echo "$sum"
)

# Change working directory and move file
function cdmv()
{
	dir="$1"
	shift
	files="$(realpath "$*")"
	if [ x"$dir"x != xx ]; then
		cd "$dir" && mv "$files" .
	fi
}
