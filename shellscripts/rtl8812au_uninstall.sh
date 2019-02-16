#!/bin/bash
git clone https://github.com/gordboy/rtl8812au
cd rtl8812au
make
sudo make uninstall
# for arch
sudo pacman -R rtl8812au-dkms-git
