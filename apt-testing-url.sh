#!/bin/bash

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
clear
echo "-'-'-'-'-'-'-'-'-'-'- DONE -'-'-'-'-'-'-'-'-'-'-"