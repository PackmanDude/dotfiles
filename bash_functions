# find without access errors display
function find-silently()
{
	/usr/bin/env find $@ 2>&1 | grep -v "Відмовлено у доступі"
}

# ls Largest Files
function lslf()
{
	du -hxs -- * | sort -rh | head -${1:-10}
}

# nano
#function nano()
#{
#	nano="/usr/bin/env nano"
#
#	[[ "$1" == *.java ]] && \
#	$nano -J 120 "$1" || \
#	$nano "$1"
#}
