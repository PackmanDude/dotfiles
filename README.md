# dotfiles
My dotfiles

All directories (e.g. i3status) must be put in *.config* in your $HOME (~) directory.
And other files in root repo directory (e.g. bashrc) must be put in your home directory directly (also they must start with dot to be hidden).

My environment variables: (I'm using pam_env for setting them, [more info](https://wiki.archlinux.org/title/environment_variables#Using_pam_env))
- PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$PATH
- VISUAL=nano
- EDITOR=nano
- MANOPT=-L ru (manpages-ru from AUR must be installed)
