# +-------------------------------+
# |  JAlexLong's shortcut stash   |
# |-------------------------------+

# Welcome to my personal aliases!
# (C) 2024 by JAlexLong

# I used whitespaces at the end of
# some aliases to hide the "you-should-use" 
# warning from the zsh plugin
# i.e. running 'clear' would trigger a ysu 
# warning if you are using 'alias clr='clear'

# quick zsh reload
function zsh_reload() {
  cd $HOME
  clear
  source ~/.zshrc
}
alias reload=zsh_reload

# full system update including manually installed binaries
# may have to create more comprehensive script for this
# TODO: include Pop!_Shop here
function update_all () {
	sudo apt -y update && sudo apt -y upgrade
	flatpak -y update
	omz update
	rustup update # <<< rust, btw <<<
	tldr -u
	yt-dlp -U
	lobster -u
}
alias upall=update_all

# vi/vim -> neovim
alias vi="nvim "
alias vim="nvim "
alias svim="sudo nvim "

# WE USE NEOVIM IN THIS HOUSE >:U
alias nano="nvim " # !!!

# accidental extra vim :q - aka rage :q
alias :q="cowsay -f eyes \"Listen bud, this isn't vim! Get that outta \
  here!! At least have the dang decency to look at the screen before \
  you start quitting out of things...\""
alias :wq=":q"

# tmux
alias tmls="tmux ls " # trailing space to avoid you-should-use warning
alias tmn="tmux new "
alias tma="tmux attach "


# apt
alias autoremove="sudo apt autoremove"

# clear cache
alias clean="rm -rf ~/.cache/*"

# config
alias vzsh="vim ~/.zshrc"
alias valias="vim ~/.oh-my-zsh/custom/aliases.zsh"
alias vvim="vim ~/.vimrc"
alias vmakepkg="sudo vim /etc/makepkg.conf"
alias vgrub="sudo vim /etc/default/grub"
alias vnvim="nvim ~/.config/nvim/ "

# power
alias sr="sudo reboot"
alias ssn="sudo shutdown now"

# ping & fping -> prettyping
alias ping="prettyping "
alias pingme="ping -c64 github.com"
alias traceme="traceroute github.com"

# clear (with optional system fetch)
alias cls="clear && pfetch"
alias clr="clear "
alias ncls="clear && neofetch"

# cmatrix
alias matrix="unimatrix -s 93 -c magenta"

# term-clock -> tock (rust, btw)
alias clock="tock -mc -C 5"

# ls -> exa
alias ls="exa --color=always --group-directories-first --icons"

# ls
alias la="ls -a" # all
alias ll="ls -lh" # long/list view
alias lsa="ls -lah" # ls + la = lsa OR
alias lla="ls -lah" # ll + la = lla
alias lt="ls -aHT --level=3" # tree
alias lst="ls -lahHT --level=3" # lt + ll = lst OR
alias ltl="ls -lahHT --level=3" # lt + ll = ltl

# cd
alias home="cd ~"
alias conf="cd ~/.config"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias dldz="cd ~/Downloads"
alias pics="cd ~/Pictures"
alias proj="cd ~/Code"
alias pub="cd ~/Public"
alias sync="cd ~/Sync"
alias vids="cd ~/Videos"

# cp
alias cpd="cp -R"
alias scpd="sudo cp -R"

# mv
alias smv="sudo mv"

# rm
alias rmd="rm -r"
alias rmdir="rm -r"
alias srm="sudo rm"
alias srmd="sudo rm -r"
alias srmdir="sudo rm -r"

# mkdir
alias mkdir="mkdir -p "
alias md="mkdir"
alias mkd="mkdir"
alias smd="sudo mkdir"
alias smkd="sudo mkdir"

# python
alias py="python3"

# brave-browser
alias brave="brave-browser" # --enable-features=Speedreader:tts/true \
#   &>/dev/null &"

# ytfzf
alias ytrefresh="ytfzf --refresh-inv-instance"
alias ytclear="ytfzf --history-clear=search && ytfzf --history-clear=watch"
alias ytvideo="ytfzf --detach --show-thumbnails --async-thumbnails"
alias ytaudio="ytfzf --detach --audio-only"
alias ytmusic="ytfzf --detach --audio-only"
alias ythistory="ytfzf -H"

# yt-dlp
alias ytdlv="yt-dlp -f 'bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]' -N 4 \
  --keep-video --write-thumbnail --write-subs --write-auto-subs \
  --embed-subs --embed-thumbnail --embed-metadata --embed-chapters \
  --embed-info-json --sponsorblock-remove sponsor"
alias ytdla="yt-dlp --extract-audio --audio-format mp3 --audio-quality 0"

# journalctl
alias jctl="journalctl -p 3 -xb"
