# find without access errors display
function find-silently()
(
	/usr/bin/env find "$@" 2>/dev/null
)

# ls Largest Files
function lslf()
(
	du -hxs -- * | sort -h | tail -"${1:-10}"
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
