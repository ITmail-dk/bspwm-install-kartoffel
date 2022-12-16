# BSPwm Install - Kartoffel "Potato Edition"
An easy and quick way to get up and running in the BSPwm desktop environment with keybindings and some standard software such as Google Chrome, Kitty Terminal, Thunar, Rofi etc... Installation time depends on your internet speed, but in about 15 minutes Are you up and running with a full Debian with BSPwm.

![BSPwm Install - Kartoffel](https://github.com/ITmail-dk/bspwm-install-ma-dte/raw/main/screenshots/Desktop_2022-01-17_151851.jpg "BSPwm Install - Martin Desktop Environment")


## Debian Linux - Git + Install
Start the installation as regular users with SUDO rights from your home directory

Debian Install ISO - Non-free Firmware download link.: 

https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/firmware-testing-amd64-netinst.iso

### Ventoy - Create one bootable USB, with multiple ISO files on it.
Just copy multiple ISO files to the USB drive and boot them directly, It's just such a great tool.
Link.: https://www.ventoy.net/en/index.html

### Remember to install Debian without the desktop environment.
After installation, Reboot the computer and login with your new user.
![Install Debian without Desktop Environment](https://github.com/ITmail-dk/bspwm-install-ma-dte/raw/main/screenshots/NO-DE_2022-01-17_145020.jpg "Debian without Desktop Environment")

##### installation gif run.:
![Setup / Install GiF](https://github.com/ITmail-dk/bspwm-install-ma-dte/raw/main/screenshots/install-gif.gif "Setup / Install")




# And run this Command line to install everything.
Here is what the command line does, it installs the GIT package an goes to your home directory and clones the installation from git and runs the installation script afterwards.

`sudo apt install -y git && cd ~ && git clone https://github.com/ITmail-dk/bspwm-install-kartoffel && . ~/bspwm-install-kartoffel/install.sh`


*Or you can do it line by line here, it's entirely up to you...*

`sudo apt install -y git`

`cd ~`

`git clone https://github.com/ITmail-dk/bspwm-install-kartoffel`

`. ~/bspwm-install-kartoffel/install.sh`


#### Here are some shortcuts to get you started.

SUPER + ENTER = Kitty (Terminal)

SUPER + B = Google Chrome (Webbrowser)

SUPER + SHIFT + B = Firefox (Webbrowser)

SUPER + E = Thunar (File Browser)

SUPER + R = Rofi (Run launcher)

And the rest you can see under .config/sxhkd/sxhkdrc