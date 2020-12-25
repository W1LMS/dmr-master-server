#!/bin/bash

apt update && apt upgrade -y
apt install -y python3.5 python3-pip python3-dev python3-setuptools python3-twisted

python3 -m pip install --upgrade pip
python3 -m pip install wheel

cp -r ./n0mjs710/* /opt/
cp ./systemd/hblink.service /lib/systemd/system/

cd /opt/dmr_utils3/
. ./install.sh

cd /opt/HBlink3/
. ./install.sh

cp ./hblink-SAMPLE.cfg ./hblink.cfg
cp ./rules_SAMPLE.py ./rules.py

clear

printf "\e[0m\e[1;33mEdit hblink.cfg and rules.py. Once done, test it out by typing:\e[0m\n\t\e[1;36mpython3 bridge.py\e[0m\n\n\e[1;33mIf all goes well, you can enable and start the service by typing:\e[0m\n\t\e[1;36msystemctl enable hblink\e[0m\n\n\e[0m\e[1;33mThen reboot your device. You can check the logs at:\e[0m\n\t\e[1;36m/tmp/hblink.log\e[0m\n\n"
