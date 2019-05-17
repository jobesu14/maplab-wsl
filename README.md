# Maplab on Windows Subsystem for Linux

Procedure and scripts to install maplab on Windows Subsystem for Linux (WSL) 

### Install Ubunutu 16.04 on Windows

https://www.microsoft.com/store/productId/9PJN388HP8C9

### Pull this repo

Open wsl and clone this repo
```git clone https://github.com/jobesu14/setup-maplab-wsl.git```

### Install ROS + maplab

```
chmod +x ~/setup-maplab-wsl/setup-install-maplab.sh
~/setup-maplab-wsl/install-maplab.sh
```

### Install Kalibr

```
chmod +x ~/setup-maplab-wsl/install-kalibr.sh
~/setup-maplab-wsl/install-kalibr.sh
```

### Install Xming server for Windows

To run applications with graphical output, you need to install an X Server on Windows.

http://www.straightrunning.com/XmingNotes/
Download link: https://sourceforge.net/projects/xming/postdownload

After you have installed VcXsrv, you also need to configure WSL to use it. To do so modify you .bashrc as follows
```
echo "export DISPLAY=:0" >> ~/.bashrc
source ~/.bashrc
```
