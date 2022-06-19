## Кольори
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
#
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Голосовий асистент "Нігон"
alias аллобялть='echo шо'
alias когда='echo завтра.'
alias м='echo м'

## Інше
alias ..='cd ..'
alias gcc='gcc -Wall -Wextra -Wpedantic -Wformat=2 -Wno-unused-parameter \
			-Wshadow -Wwrite-strings -Wstrict-prototypes \
			-Wold-style-definition -Wredundant-decls -Wnested-externs \
			-Wmissing-include-dirs -Wjump-misses-init -Wlogical-op'
alias chown='chown -v'
alias cls='clear'
alias cp='cp -riv'
#
alias ls='ls -F'
alias lA='ls -lA'
alias la='ls -la'
alias lh='ls -lh'
alias lhA='lA -h'
alias lha='la -h'
alias ll='ls -l'
#
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias neofetch='pridefetch'
alias rm='rm -v'
alias rmdir='rmdir -v'
alias wget='wget -rnd'
alias whoami='echo "I'\''m Travis. Travis Scott"'
alias yt-audio='\youtube-dl -x --audio-quality=0 --audio-format=mp3'
alias youtube-dl='youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio --merge-output-format=mp4'
alias zip='zip -r'
