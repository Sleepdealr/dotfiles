alias ff="fastfetch"           
alias ffgay="fastfetch | lolcat"
alias uwu="uwufetch"
alias clr="clear"
alias path='echo $PATH | tr -s ":" "\n"'
alias yolo='git commit -m "lol good luck"'
alias vim="nvim"
alias {btm,stats}="btm -l --color nord --battery"
alias lg="lazygit"
alias rmf="rm -rf "
alias cmatrix="cmatrix -a -b -C green"
alias gaymatrix="cmatrix -a -b | lolcat"

alias ez="$EDITOR ~/.zshrc"
alias sz="source ~/.zshrc"     
alias ea="$EDITOR ~/.config/alacritty/alacritty.yml"
alias eal="$EDITOR $ZSH_DIR/aliases.zsh"
alias ev="$EDITOR ~/.config/nvim/init.vim"
alias ex="$EDITOR ~/.xinitrc"

alias v="nvim"
alias e="exit"
alias cz="cd ~/.config/zsh"
alias doc="cd ~/Documents"
alias down="cd ~/Downloads"
alias htop="btop"

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias parsua='paru -Sua --noconfirm'             # update only AUR pkgs (paru)
alias parsyu='paru -Syu --noconfirm'             # update standard pkgs and AUR pkgs (paru)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages
alias pi="sudo pacman -S "
alias ps="pacman -Ss"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias maimwin="maim -u -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png"
alias colorpick="maim -st 0 | convert - -resize 1x1\! -format '%[pixel:p{0,0}]' info:-"

#changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -al --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -a | egrep "^\."'

#FZF-ify everything
#alias vf="vim $(fzf)"
#alias printfuz="find * -type f | fzf > selected"

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

alias ..="cd .."
alias {..2,...}="cd ../.."
alias {..3,....}="cd ../../.."
alias {..4,.....}="cd ../../../.."
alias {..5,......}="cd ../../../../.."
alias ~="cd ~"
alias home="~"

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\\? \\(addr:\\)\\?\\s\\?\\(\\(\\([0-9]\\+\\.\\)\\{3\\}[0-9]\\+\\)\\|[a-fA-F0-9:]\\+\\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

