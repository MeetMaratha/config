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
rate-mirrors --protocol "https" --save "/etc/pacman.d/mirrorlist" arch

yay -S alacritty audacious autoconf automake base bison bleachbit blueberry bluez-utils brightnessctl calc calibre dosfstools dunst efibootmgr evince fakeroot festival-freebsoft-utils firefox fish flameshot flatpak flex gcc gimp git github-desktop-bin gnome-disk-utility gparted gprename gvfs gvfs-gphoto2 gvfs-mtp heroic-games-launcher htop jmtpfs joplin-appimage leafpad lib32-fontconfig libinput-gestures libreoffice-fresh libtool lightdm lightdm-slick-greeter lutris lxappearance lxtask m4 mesa mtools mtpfs nano nemo neofetch nerd-fonts-source-code-pro network-manager-applet networkmanager nitrogen ntfs-3g os-prober otf-helvetica-now pacman-contrib pamixer patch pavucontrol pbzip2 picom-git pkgconf pkgfile playerctl plymouth plymouth-theme-arch-darwin protonup-git protonup-qt python-dbus-next python-iwlib python-pip python-psutil python-pywal python37 qalculate-gtk qt5-graphicaleffects qt5-quickcontrols2 qt5-virtualkeyboard qtile-extras-git qtile-git ristretto rofi rsync samba sddm steam sudo swig telegram-desktop timeshift transmission-gtk ttf-font-awesome ttf-hack ttf-liberation ttf-roboto ttf-roboto-mono ttf-times-new-roman ufw vim visual-studio-code-bin vlc vulkan-radeon wget wine winetricks wmctrl wqy-zenhei xarchiver xdg-user-dirs xdotool xf86-video-amdgpu xf86-video-vesa xlockmore xorg-bdftopcf xorg-docs xorg-font-util xorg-fonts-100dpi xorg-fonts-75dpi xorg-fonts-encodings xorg-iceauth xorg-mkfontscale xorg-server xorg-server-common xorg-server-devel xorg-server-xephyr xorg-server-xnest xorg-server-xvfb xorg-sessreg xorg-setxkbmap xorg-smproxy xorg-x11perf xorg-xauth xorg-xbacklight xorg-xcmsdb xorg-xcursorgen xorg-xdpyinfo xorg-xdriinfo xorg-xev xorg-xgamma xorg-xhost xorg-xinit xorg-xinput xorg-xkbcomp xorg-xkbevd xorg-xkbutils xorg-xkill xorg-xlsatoms xorg-xlsclients xorg-xmodmap xorg-xpr xorg-xprop xorg-xrandr xorg-xrdb xorg-xrefresh xorg-xset xorg-xsetroot xorg-xvinfo xorg-xwayland xorg-xwd xorg-xwininfo xorg-xwud zip zoom

# Enable lightdm
sudo systemctl enable sddm.service

# Copy all relevant files
cd ..
mkdir ~/.config
mkdir ~/.fonts
mkdir ~/.fonts/ttf
mkdir ~/.themes
mkdir ~/.icons
cp config/* ~/.config
cp fonts/* ~/.fonts/ttf
cp icons/* ~/.icons
cp themes/* ~/.themes
sudo cp etc/plymouth/* /etc/plymouth
sudo cp usr/share/sddm/* /usr/share/sddm

