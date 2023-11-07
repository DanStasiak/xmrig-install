#! /bin/bash
sudo apt purge xserver* lightdm* raspberrypi-ui-mods vlc* lxde* chromium* desktop* gnome* gstreamer* gtk* hicolor-icon-theme* lx* mesa* -y
curl https://download.argon40.com/argon1.sh | bash 
sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libvlc-bin -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
