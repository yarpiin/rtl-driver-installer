# RTL-Driver-Installer <img alt="GitHub release" src="https://img.shields.io/github/release/Alexander88207/RTL8812au-Installer.svg">

Should you have a problem during installation or general with the driver then let me know :)

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

- RTL8812au by [gordboy](https://github.com/gordboy/rtl8812au)
- RTL8188eu, RTL8188eus & RTL8188etv by [quckreflex](https://github.com/quickreflex/rtl8188eus)
- RTL8821ce by [tomaspinho](https://github.com/tomaspinho/rtl8821ce)
- RTL8192du (soon)
- RTL8723be (soon)

Note: If your desired driver is not there or does not work please open an issue.

# Preparations
Before you start installing the WiFi driver, make sure you have all the updates installed. If you have previously installed a kernel update, restart your computer to avoid errors during installation.

# Installation/Uninstallation

Download the latest stable release from [here](https://github.com/Alexander88207/RTL8812au-Installer/releases) or if you are brave use my [testing](https://github.com/Alexander88207/RTL8812au-Installer/tree/testing) branch ;)

To start this installer use the follwing command in the folder:
```
bash Installer.sh
```

To uninstall this driver select "uninstall"

## See how this works!

<a href="https://www.youtube.com/watch?v=hGLh3bI8WLg"><img src="https://www.bilder-upload.eu/upload/7f26bd-1557222110.jpg" style="width:82px; height:86px" title="White flower" alt="Flower"></a>

# FAQ

- Why i have package loss or bad ms? for example like [this](https://hastebin.com/ebusamonev.coffeescript)

If you encounter this error, try another USB port first. If this is not enough, adjust your antennas if you have them on your adapter. For testing, a ping request is sufficient to routher via a terminal with the command  "ping 192.168.2.1 ". The IP address could be different for your routher. And make sure before that all programs are closed and no one else just overloaded the network. 

- Why does my device suddenly stop working after an update?

This happens when the linux kernel was updated. The only solution is to reinstall the driver again. This is not needed for the Arch installation of the RTL8812au driver!

## Contriubute
if you want to contribute to this repo then just send a pull request :)
