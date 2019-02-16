#/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="RTL8812au-Installer"
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
			cd shellscripts/
			bash sabayon-sources44.sh
            ;;
        2)
			cd shellscripts/
			bash sabayon-sources49.sh
            ;;
        3)
                        cd shellscripts/
			bash sabayon-sources414.sh
            ;;
        4)
                        cd shellscripts/
			bash sabayon-sources418.sh
            ;;
	5)
                        cd shellscripts/
			bash sabayon-sources419.sh
            ;;
	6)
                        cd shellscripts/
			bash sabayon-sources420.sh
            ;;
	    
esac
