# xmrig-install

Install a xmrig to a Raspberry Pi

Here are the steps:

sudo raspi-config

sudo apt purge xserver* lightdm* raspberrypi-ui-mods vlc* lxde* chromium* desktop* gnome* gstreamer* gtk* hicolor-icon-theme* lx* mesa* -y

#curl https://download.argon40.com/argon1.sh | bash 
sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libvlc-bin -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
sudo nano /lib/systemd/system/mining.service
******************************************

[Unit]
Description=my CryptoMining
After=multi-user.target

[Service]
Environment=Display=:0
ExecStart=/bin/bash -c 'sudo /home/pi/xmrig/build/xmrig -o gulf.moneroocean.stream:10128 -u 498vy6WTVfd3HVFEHt6tWDQfrffFbtqR3edSXH345R7djegcNgPoT5tFHdLEVonAi7eaE13Y6oBNfcnafzNjNVhh7gXQ576 -p $PI_SERVER_NAME'
Restart=always
RestartSec=10s
KillMode=process
TimeoutSec=infinity

[Install]
WantedBy=multi-user.target
*********************************************
SAVE

sudo systemctl daemon-reload
sudo systemctl disable mining.service
sudo systemctl enable mining.service

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo reboot
