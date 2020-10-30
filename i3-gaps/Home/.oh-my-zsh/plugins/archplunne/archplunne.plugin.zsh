############################################
##               ARCHPLUNNE               ##
############################################

# Aliases
alias clr='clear'
alias ls='ls -la'
alias neo='echo -e "\n" && neofetch'
alias xr='xrdb .Xressources'
alias rmir='sudo rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist'

# Editors
alias na='nano'
alias v='vim'
alias vs='code'
alias suna='sudo nano'
alias suvi='sudo vim'
alias suvs='sudo code'

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
