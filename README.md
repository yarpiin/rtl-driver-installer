# RTL8812au-Installer
Should you have a problem during installation or general with the driver then let me know :)

Currently, the installer use the repository of "[gordboy](https://github.com/gordboy/rtl8812au)"

# Preparations
Before you start installing the WiFi driver, make sure you have all the updates installed. If you have previously installed an update. Restart your computer to avoid errors during installation.

# Installation

Very simple :)
```
git clone https://github.com/Alexander88207/RTL8812au-Installer.git
cd RTL8812au-Installer
bash Installer.sh
```
![](https://github.com/Alexander88207/RTL8812au-Installer/raw/master/Screenshot3.png)

# Uninstallation

Very simple too :)

![](https://github.com/Alexander88207/RTL8812au-Installer/raw/master/Screenshot2.png)



After that restart your computer!
# Tested devices
- <a href="http://www.netis-systems.com/Home/detail/id/96.html">Netis WF2190 AC1200 Wireless Dual Band USB Adapter</a>
- <a href="https://www.tp-link.com/at/products/details/cat-11_Archer-T4U.html">TP Link Archer T4U AC1200 Dual Band USB Adapter</a>

 If your device works but its not in this list submit a pull request  <a href="https://github.com/Alexander88207/RTL8812au-Installer/pulls">here</a>

# FAQ

- Why i have package loss or bad ms? for example like this https://pastebin.com/sH9T1NaD

If you encounter this error, try another USB port first. If this is not enough, adjust your antennas if you have them on your adapter. For testing, a ping request is sufficient to routher via a terminal with the command  "ping 192.168.2.1 ". The IP address could be different for your routher. And make sure before that all programs are closed and no one else just overloaded the network. 

- Why does my device suddenly stop working after an update?

This happens when the linux kernel was updated. The only solution is to reinstall the driver again. This is not needed for the Arch installation!

## Contriubute
if you want to contribute to this repo then just send a pull request :)
