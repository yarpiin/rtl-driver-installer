#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo pacman -S bc dkms git linux-headers
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://aur.archlinux.org/rtl8812au-dkms-git.git
cd rtl8812au-dkms-git
echo -e "\e[40;38;5;82m Driver will be built & installed \e[30;48;5;82m\e[0m"
makepkg -i
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now restart your pc and plug in your wifi adapter! \e[0m"
