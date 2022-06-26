# find without access errors display
function find()
{
	/usr/bin/env find $@ 2>&1 | grep -v "Відмовлено у доступі"
}

# ls Largest Files
function lslf()
{
	du -hxs -- * | sort -rh | head -${1:-10}
}
