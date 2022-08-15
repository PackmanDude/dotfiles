## Кольори
alias ls='ls --color=auto -F'
alias diff='diff --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'
#
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Голосовий асистент "Нігон"
alias аллобялть='echo шо'
alias когда='echo завтра.'
alias м='echo м'

## Інше
alias cls='clear'
alias ..='cd ..'
alias gcc='gcc -Wall -Wextra -Wpedantic -Wformat=2 -Wno-unused-parameter \
			   -Wshadow -Wwrite-strings -Wstrict-prototypes \
			   -Wold-style-definition -Wredundant-decls -Wnested-externs \
			   -Wmissing-include-dirs -Wjump-misses-init -Wlogical-op'
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
alias lhA='lA -h'
alias lha='la -h'
alias ll='ls -l'
#
alias mkdir='mkdir -pv'
alias neofetch='pridefetch'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias wget='wget -rnd'
alias whoami='echo "I'\''m Travis. Travis Scott"'
alias youtube-dl='yt-dlp'
alias yt-dlp='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'
alias zip='zip -r'
