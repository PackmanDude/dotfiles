## Кольори
alias ls='ls -F --color=auto'
alias diff='diff -r --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
#
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
## Голосовий асистент "Нігон"
alias аллобялть='printf шо\\n'
alias когда='printf завтра.\\n'
alias м='printf м\\n'

## Інше
alias cls='clear'
alias ..='cd ..'
alias gcc='gcc -std=c99 -Wall -Wextra -Wpedantic -Wformat=2 -Wshadow \
	-Wwrite-strings -Wstrict-prototypes -Wold-style-definition \
	-Wredundant-decls -Wnested-externs -Wmissing-include-dirs \
	-Wjump-misses-init -Wlogical-op'
#
alias mv='mv -iv'
alias cp='cp -aiv'
alias rm='rm -rIv'
alias rmdir='rmdir -v'
#
alias chmod='chmod -v'
alias chown='chown -v'
#
alias lA='ls -lA'
alias la='ls -la'
alias lh='ls -lh'
alias lhA='ls -lhA'
alias lha='ls -lha'
alias ll='ls -l'
#
alias check_vkhandles='grep -r VK_DEFINE_NON_DISPATCHABLE_HANDLE /usr/include/vulkan/ && grep -r VK_DEFINE_HANDLE /usr/include/vulkan/'
alias lolcat='lolcat -t'
alias gallery-dl='gallery-dl -D .'
alias makepkg='makepkg -sirc'
alias mkdir='mkdir -pv'
alias neofetch='pridefetch -f UPA'
alias pacman='pacman --disable-download-timeout'
alias patool='patool -v'
alias vi='vim'
alias vim='vim -p'
alias wget='wget -nc'
alias whoami='echo "I'\''m Travis. Travis Scott."'
alias rsync='rsync -avxHAWXS --numeric-ids --info=progress2'
alias tree='tree -F'
alias xxd='xxd -u'
alias youtube-dl='yt-dlp'
alias zip='zip -r'
