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
Screenshot = flameshot


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

all: update install

.PHONY: update install

update:
	yay -Syy

install:
	yay -S $(ALL)


###############
#     ZSH     #
###############

zsh:
	sudo pacman -S zsh
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	chsh -s /bin/zsh
	echo "exec zsh" > .bashrc
