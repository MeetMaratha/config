!/bin/bash

# Install Pre-requesites for yay
sudo pacman -S git base-devel

# Cloning YAY repository
git clone https://aur.archlinux.org/yay.git

# Installing YAY
cd yay
makepkg -si

# Install rate-mirrors to get faster download spped and save the mirror list
yay -S rate-mirrors-bin
rate-mirrors --protocol "https" --save "mirrorlist" arch
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak 
sudo cp mirrorlist /etc/pacman.d/mirrorlist

yay -S audacious autoconf bison bleachbit blueberry bluez-utils brightnessctl calc calibre dosfstools dunst evince festival-freebsoft-utils firefox fish flameshot flatpak flex gcc gimp github-desktop-bin gparted gprename gvfs gvfs-gphoto2 gvfs-mtp heroic-games-launcher htop jmtpfs joplin-appimage lib32-fontconfig libreoffice-fresh libtool lutris lxappearance lxtask m4 mesa mtpfs neofetch nerd-fonts-source-code-pro network-manager-applet ntfs-3g otf-helvetica-now pacman-contrib pamixer patch pavucontrol pbzip2 picom-git pkgconf pkgfile playerctl protonup-git python-dbus-next python-iwlib python-pip python-psutil python-pywal qalculate-gtk ristretto rofi rsync samba steam swig telegram-desktop timeshift transmission-gtk ttf-font-awesome ttf-hack ttf-liberation ttf-roboto ttf-roboto-mono ufw vim visual-studio-code-bin vlc vulkan-radeon wget wine winetricks wmctrl wqy-zenhei xarchiver xdg-user-dirs xdotool zip



# Enable lightdm
sudo systemctl enable sddm.service

# Copy all relevant files
cd ~/config
mkdir ~/.config
mkdir ~/.fonts
mkdir ~/.fonts/ttf
mkdir ~/.themes
mkdir ~/.icons
cp -r ~/config/config/* ~/.config
cp -r ~/config/fonts/* ~/.fonts/ttf
cp -r ~/config/icons/* ~/.icons
cp -r ~/config/themes/* ~/.themes
sudo cp -r ~/config/etc/plymouth/* /etc/plymouth
sudo cp -r ~/config/usr/share/sddm/* /usr/share/sddm

