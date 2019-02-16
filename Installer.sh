#/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="RTL8812au-Installer"
TITLE="Distro Selector"
MENU="Choose one of the following options:"

OPTIONS=(1 "Arch"
         2 "Solus"
         3 "Ubuntu"
         4 "Sabayon"
         5 "Uninstall")

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
			cd shellscripts/
			bash rtl8812au-arch.sh
            ;;
        2)
			cd shellscripts/
			bash rtl8812au-solus.sh
            ;;
        3)
                        cd shellscripts/
			bash rtl8812au-ubuntu.sh
            ;;
        4)
			cd shellscripts/
			bash rtl8812au-sabayon.sh
            ;;
        5)
			cd shellscripts/
			bash rtl8812au_uninstall.sh
            ;;
esac
