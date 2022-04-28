#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PROTONSTEAMAPPS="~/SteamLibrary/steamapps/"
export WINEPREFIX="~/.wine/"
export PATH="$PATH:$GEM_HOME/bin:/home/packman/.local/bin:$PROTONSTEAMAPPS/common/Proton 4.11/dist/bin"
