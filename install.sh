#!/bin/bash

# START RUN ############################################################################################################################################

clear

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo sed -i 's+deb cdrom+#deb cdrom+g' /etc/apt/sources.list

sudo sed -i 's+deb http://deb.debian.org/debian/ testing main contrib non-free+#deb http://deb.debian.org/debian/ testing main contrib non-free+g' /etc/apt/sources.list
sudo sed -i 's+deb-src http://deb.debian.org/debian/ testing main contrib non-free+#deb-src http://deb.debian.org/debian/ testing main contrib non-free+g' /etc/apt/sources.list
sleep 1
sudo sh -c "echo 'deb http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# APT Update + install git
sudo apt update && sudo apt install -y git

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Add Software & Packages.
# Add ROOT Level - Software & Packages.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT Install Software & Packages"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

# APT Update Start RUN
sudo apt update

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Core packages to be installed ############################################################################################################################################
sudo apt install -y xorg bspwm sxhkd sddm pipewire wireplumber pipewire-alsa pipewire-pulse pipewire-jack qjackctl alsa-firmware-loaders alsa-utils arandr autorandr picom kitty psmisc rofi thunar nitrogen dunst cups xsensors xbacklight htop mc xarchiver curl neovim xinput sshfs polybar

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# APT packages to be installed, which are allowed to fail the installation as they are not core packages
sudo apt install -y policykit-1-gnome mpv tmux sxiv scrot flameshot numlockx gparted qimgv speedcrunch notify-osd cpufrequtils rsync smbclient nfs-common xautolock xsecurelock lxappearance firefox-esr
# network-manager nemo pcmanfm module-assistant font-manager gvfs-backends neofetch flatpak timeshift rename xfce4-power-manager xfce4-settings bpytop firmware-linux-nonfree virt-viewer gvncviewer wireguard freerdp2-x11 freerdp2-shadow-x11

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Do, mkdir, copy, copy, echo files. ###################################################################################################################

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Creates User folders."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config
mkdir ~/.config/polybar
mkdir ~/.config/picom
mkdir ~/.themes
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin
mkdir ~/wallpapers

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

#Copy files to...
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Copy files to..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cp -r ~/bspwm-install-kartoffel/config/* ~/.config/
cp -r ~/bspwm-install-kartoffel/fonts/* ~/.fonts/
cp -r ~/bspwm-install-kartoffel/themes/* ~/.themes/
cp -r ~/bspwm-install-kartoffel/wallpapers/* ~/wallpapers/

cp ~/bspwm-install-kartoffel/local-files/.Xresources ~/

cp /etc/polybar/config.ini ~/.config/polybar
cp /usr/share/doc/picom/examples/picom.sample.conf ~/.config/picom/picom.conf


# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Echo config to files. YES / NO
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Echo config to files..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

echo "     Add Alias to bashrc under bash_aliases config."

echo 'alias ls="ls --color=auto --group-directories-first -v -lah"' >> ~/.bashrc
echo 'alias vi="nvim"' >> ~/.bashrc
echo 'alias upup="sudo apt update && sudo apt upgrade -y && sudo apt clean && sudo apt autoremove -y"' >> ~/.bashrc

# Echo Nitrogen config to files.
echo "dirs=$HOME/wallpapers/;" >> ~/.config/nitrogen/nitrogen.cfg

touch ~/.config/nitrogen/bg-saved.cfg
echo "[xin_-1]" >> ~/.config/nitrogen/bg-saved.cfg
echo "file=$HOME/wallpapers/default-wallpaper.jpg" >> ~/.config/nitrogen/bg-saved.cfg
echo "mode=5" >> ~/.config/nitrogen/bg-saved.cfg
echo "bgcolor=#191a1b" >> ~/.config/nitrogen/bg-saved.cfg

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

#chmod +x files.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     chmod +x files."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

chmod +x ~/.config/rofi/powermenu.sh
chmod +x ~/.config/rofi/rofi-wifi-menu.sh
chmod +x ~/.config/rofi/rofi-beats.sh

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

#Unzip files to...
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Unzip files to..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

#tar -xf themes/archive.tar.xz -C ~/.themes/
#tar -xf themes/Nordic-bluish-accent.tar.xz -C ~/.themes/
#tar -xf themes/cursors/Nordzy-cursors.tar.gz -C ~/.icons/

#Git Clone files.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Git Clone - Downloads"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

#git clone https://github.com/LINK Nordic-Theme Specific-folder

git clone https://github.com/EliverLara/Nordic ~/bspwm-install-kartoffel/themes/Nordic-theme
git clone https://github.com/alvatip/Nordzy-cursors ~/bspwm-install-kartoffel/themes/cursors/Nordzy-cursors-theme
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme ~/bspwm-install-kartoffel/themes/icons/Papirus-icon-theme

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

#Copy Theme files...
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Copy Theme files..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

mkdir ~/.icons/Nordzy-cursors
cp -r ~/bspwm-install-kartoffel/themes/cursors/Nordzy-cursors-theme/Nordzy-cursors/* ~/.icons/Nordzy-cursors

mkdir ~/.icons/Papirus
mkdir ~/.icons/Papirus-Dark
mkdir ~/.icons/Papirus-Light
cp -r ~/bspwm-install-kartoffel/themes/icons/Papirus-icon-theme/Papirus/* ~/.icons/Papirus
cp -r ~/bspwm-install-kartoffel/themes/icons/Papirus-icon-theme/Papirus-Dark/* ~/.icons/Papirus-Dark
cp -r ~/bspwm-install-kartoffel/themes/icons/Papirus-icon-theme/Papirus-Light/* ~/.icons/Papirus-Light

mkdir ~/.config/gtk-3.0
cp ~/bspwm-install-kartoffel/themes/gtk-3.0/settings.ini ~/.config/gtk-3.0
cp ~/bspwm-install-kartoffel/themes/.gtkrc-2.0 ~/

cp -r ~/bspwm-install-kartoffel/themes/* ~/.themes/

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "          All DONE - User + .config files..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Google Chrome - Download + Install  ON / OFF
#rm google-chrome-stable_current_amd64.deb
cd /tmp/ && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y /tmp/google-chrome-stable_current_amd64.deb

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

cd ~

# Add Pipewire & Wireplumberto system startup as user.
systemctl --user --now enable pipewire
sleep 1
systemctl --user --now enable wireplumber.service

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Set User folders via xdg-user-dirs-update.
xdg-user-dirs-update

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

# Edit Grub * update

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo sed -i 's+GRUB_TIMEOUT=5+GRUB_TIMEOUT=1+g' /etc/default/grub
sleep 1
sudo update-grub

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."
clear

sleep 1
echo " Reboot in 5..."
sleep 1
echo " Reboot in 4..."
sleep 1
echo " Reboot in 3..."
sleep 1
echo " Reboot in 2..."
sleep 1
echo " Reboot in 1..."
sleep 1

# END RUN ##########################################################################################################################################

sudo reboot