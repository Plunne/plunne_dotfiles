#!/bin/zsh

############################################
##               ARCHPLUNNE               ##
############################################

# Aliases
alias clr='clear'
alias ls='ls -la --color'
alias neo='clear && echo -e "\n" && neofetch'
alias xr='xrdb .Xressources'
alias r='ranger'

# Archives
alias mtar='tar -zcvf' # mtar <archive_in>
alias utar='tar -zxvf' # utar <archive_out> <file_list>
alias z='zip' # z <archive_out> <file_list>
alias uz='unzip' # uz <archive_in> -d <dir_out>

# Editors
alias na='nano'
alias v='nvim'
alias vs='code'
alias suna='sudo nano'
alias suvi='sudo nvim'
alias suvs='sudo code'

# Config files
alias c-plunne='$EDITOR ~/.config/zsh/archplunne.zsh'
alias c-bsp='$EDITOR ~/.config/bspwm/bspwmrc'
alias c-i3='$EDITOR ~/.config/i3/config'
alias c-ala='$EDITOR ~/.config/alacritty/alacritty.yml'
alias c-dunst='$EDITOR ~/.config/dunst/dunstrc'
alias c-neo='$EDITOR ~/.config/neofetch/config.conf'
alias c-pb='$EDITOR ~/.config/polybar/config'
alias c-picom='$EDITOR ~/.config/picom.conf'
alias c-sxhkd='$EDITOR ~/.config/sxhkd/sxhkdrc'
alias c-xres='$EDITOR ~/.Xressources'
alias c-xini='$EDITOR ~/.xinitrc'
alias c-zsh='$EDITOR ~/.zshrc'
alias c-p10k='$EDITOR ~/.p10k'
alias c-vinit='$EDITOR ~/.config/nvim/init.vim'
alias c-vplug='$EDITOR ~/.config/nvim/vim-plug/plugins.vim'
alias c-vset='$EDITOR ~/.config/nvim/general/settings.vim'

# Script files
alias s-polybar='$EDITOR ~/.scripts/polybar.sh'
alias s-monitors='$EDITOR ~/.scripts/monitors.sh'

# Network
alias net-h='https://linuxhint.com/arch_linux_network_manager/'
alias net-show='nmcli connection show'
alias net-dev='nmcli device'
alias net-up='nmcli connection up uuid'
alias net-deco='nmcli device disconnect'

alias wifi-list='nmcli device wifi list'
alias wifi-co='nmcli device wifi connect' # + <SSID> password <passwd>
alias wifi-on='nmcli radio wifi on'
alias wifi-off='nmcli radio wifi off'

# Systemctl
alias sctl='systemctl'
alias sctle='systemctl enable'
alias sctld='systemctl disable'
alias sctls='systemctl status'

#yay - https://github.com/Jguer/yay
alias yau='yay -Syu'
alias yai='yay -S'
alias yaiu='yay -U'
alias yar='yay -R'
alias yaar='yay -Rns'
alias yasi='yay -Si'
alias yass='yay -Ss'
alias yaqi='yay -Qi'
alias yaqs='yay -Qs'
alias yaqe='yay -Qe'
alias yaqdt='yay -Qtd'
alias yasyy='yay -Syy'
alias yapg='yay -Pg'

# Pacman - https://wiki.archlinux.org/index.php/Pacman_Tips
alias pau='sudo pacman -Syu'
alias pai='sudo pacman -S'
alias paiu='sudo pacman -U'
alias par='sudo pacman -R'
alias paar='sudo pacman -Rns'
alias pasi='pacman -Si'
alias pass='pacman -Ss'
alias paqi='pacman -Qi'
alias paqs='pacman -Qs'
alias paqdt='sudo pacman -Qdt'
alias pasyy='sudo pacman -Syy'
alias pars='sudo pacman -Rs $(pacman -Qtdq)'
alias pafy='sudo pacman -Fy'
alias paf='pacman -F'
alias paql='pacman -Ql'
alias paqo='pacman -Qo'
