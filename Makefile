########################
#     APPLICATIONS     #
########################

# Main Apps
Terminal = alacritty
Editor = neovim
Browser = firefox
FileManager = pcmanfm ranger
Archiver = xarchiver
PdfViewer = zathura
VideoViewer = mpv
Screenshot = flameshot dbus

# System
Sysinfos = neofetch
Sysmonitor = htop

# WM
Bar = polybar
Compositor = picom-ibhagwan-git
Launcher = rofi
Wallpaper = feh

# Xorg
Gpu = xf86-video-amdgpu
Xorg = xorg-server xorg-xinit xorg-xrandr xsel
X11 = $(Gpu) $(Xorg)

# Audio
Audio = alsa-utils pulseaudio-alsa

# Archives
Archives = gzip zip unzip rar unrar

# Fileypes
Filetypes = gvfs exfat-utils ntfs-3g udisks2

# Network
Network = net-tools

# Office
Office = libreoffice-still

#####################
#     VARIABLES     #
#####################

MAIN_APPS = $(Terminal) $(Editor) $(Browser) $(FileManager) $(Archiver) $(PdfViewer) $(VideoViewer) $(Screenshot)
SYSTEM = $(Sysinfos) $(Sysmonitor)
WM = $(Bar) $(Compositor) $(Launcher) $(Wallpaper)
XORG = $(Gpu) $(Xorg) $(X11)
MISC = $(Audio) $(Archives) $(Filetypes) $(Network) $(Office)
APPS = discord spotify

ALL = $(MAIN_APPS) $(SYSTEM) $(WM) $(XORG) $(MISC) $(APPS)


########################
#     INSTALLATION     #
########################

all: update install wm zsh

.PHONY: update install

update:
	yay -Syy

install:
	yay -S $(ALL)

wm:
	yay -S bspwm sxhkd bsp-layout man-db


###############
#     ZSH     #
###############

# Set your username
USER = plunne

zsh: zsh-omz p10k

zsh-omz:
	sudo pacman -S zsh
	chsh -s /bin/zsh $(USER)
	echo "exec zsh" > .bashrc
	zsh
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

p10k:
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

