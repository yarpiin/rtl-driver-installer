#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.9 --ask
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
make
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now restart your pc and plug in your wifi adapter! \e[0m"
