# RTL8812au-Installer <img alt="GitHub release" src="https://img.shields.io/github/release/Alexander88207/RTL8812au-Installer.svg">

Should you have a problem during installation or general with the driver then let me know :)

Currently, the installer use the repository of "[gordboy](https://github.com/gordboy/rtl8812au)"

# Features

- The driver will be installed automatically with all required dependencies.
- Offline installation : Install your driver again if you lose your connection after a kernel update.

# Supported distributions

- Arch/Manjaro/Antergos
- Solus
- Ubuntu
- Sabayon
- OpenSUSE

# Supported realtek wifi adapters

- RTL8812au
- RTL8188eu, RTL8188eus and RTL8188etv (soon)
- RTL8821CE (soon)

# Preparations
Before you start installing the WiFi driver, make sure you have all the updates installed. If you have previously installed a kernel update, restart your computer to avoid errors during installation.

# Installation/Uninstallation

Download the latest stable release from [here](https://github.com/Alexander88207/RTL8812au-Installer/releases) or if you are brave use my [testing](https://github.com/Alexander88207/RTL8812au-Installer/tree/testing) branch ;)

To start this installer use the follwing command in the folder:
```
bash Installer.sh
```
![](https://www.bilder-upload.eu/upload/08fede-1553274259.png)

To uninstall this driver select "uninstall"

# FAQ

- Why i have package loss or bad ms? for example like this https://pastebin.com/sH9T1NaD

If you encounter this error, try another USB port first. If this is not enough, adjust your antennas if you have them on your adapter. For testing, a ping request is sufficient to routher via a terminal with the command  "ping 192.168.2.1 ". The IP address could be different for your routher. And make sure before that all programs are closed and no one else just overloaded the network. 

- Why does my device suddenly stop working after an update?

This happens when the linux kernel was updated. The only solution is to reinstall the driver again. This is not needed for the Arch installation!

## Contriubute
if you want to contribute to this repo then just send a pull request :)
