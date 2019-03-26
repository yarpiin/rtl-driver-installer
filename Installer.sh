#/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies to run this script \e[30;48;5;82m\e[0m"
sudo eopkg it dialog
sudo apt install dialog
#/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Welcome $USER :) "
MENU="Choose one of the following distros or options:"

OPTIONS=(1 "Arch/Manjaro/Antergos"
         2 "Solus"
         3 "Ubuntu"
         4 "Sabayon"
         5 "Uninstall"
	 6 "Reinstall")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo pacman -S bc dkms git linux-headers
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://aur.archlinux.org/rtl8812au-dkms-git.git
cd rtl8812au-dkms-git
echo -e "\e[40;38;5;82m Driver will be built & installed \e[30;48;5;82m\e[0m"
makepkg -i
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
esac
            ;;
        2)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo eopkg it gcc binutils git make
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Question about Solus Kernel"
MENU="What kernel do you use?:"

OPTIONS=(1 "Current"
         2 "LTS")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
sudo eopkg it linux-current-headers
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac


            ;;
        2)
			#!/bin/bash
sudo eopkg it linux-lts-headers
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
cho -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac

esac


            ;;
        3)
                        #!/bin/bash
sudo apt update
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo apt install -y git build-essential make autoconf libtool gcc gettext
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac


            ;;
        4)
			#!/bin/bash
sudo equo i git --ask
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Sabayon sources installation"
MENU="Choose your kernel version of sabayon:"

OPTIONS=(1 "4.4"
         2 "4.9"
         3 "4.14"
         4 "4.18"
	 5 "4.19"
	 6 "4.20")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.4 --ask
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac

            ;;
        2)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.9 --ask
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac

            ;;
        3)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.14 --ask
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac

            ;;
        4)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.18 --ask
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac

            ;;
	5)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.19 --ask
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"

            ;;
	6)
			#!/bin/bash
echo -e "\e[40;38;5;82m Installing dependencies \e[30;48;5;82m\e[0m"
sudo equo install gcc --ask
sudo equo i sys-kernel/sabayon-sources:4.20 --ask
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter! \e[0m"
read -p "Press enter to continue"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac

            ;;
	    
esac


            ;;
        5)
			#!/bin/bash
git clone https://github.com/gordboy/rtl8812au
cd rtl8812au
sudo make uninstall
# for arch
sudo pacman -R rtl8812au-dkms-git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m Done! \e[0m"
            ;;
	6)
			#!/bin/bash
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
cd rtl8812au
echo -e "\e[40;38;5;82m Building driver \e[30;48;5;82m\e[0m"
make
echo -e "\e[40;38;5;82m Installing driver \e[30;48;5;82m\e[0m"
sudo make install
sudo modprobe 8812au
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m You can now use your wifi adapter again! \e[0m"
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=2
BACKTITLE="RTL8812au-Installer 1.1"
TITLE="Reinstall after kernel update"
MENU="Should this installer leave files for a reinstallation after a kernel update?:"

OPTIONS=(1 "Yes"
         2 "No")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Downloading driver \e[30;48;5;82m\e[0m"
git clone https://github.com/gordboy/rtl8812au.git
echo -e "\e[40;38;5;82m Done :) \e[30;48;5;82m \e[0m"

            ;;
        2)
			#!/bin/bash
cd -
echo -e "\e[40;38;5;82m Removeing old files \e[30;48;5;82m\e[0m"
rm -rf rtl8812au
echo -e "\e[40;38;5;82m Alright :) \e[30;48;5;82m\e[0m"

esac
esac

