#!/bin/bash

apt update && apt upgrade -y
apt install -y python3-twisted

cp -r ./n0mjs710/* /opt/
cp -r ./systemd/hblink.service /lib/systemd/system/

. /opt/dmr_utils3/install.sh
. /opt/HBlink3/install.sh

cp /opt/HBlink3/hblink-SAMPLE.cfg /opt/HBlink3/hblink.cfg
cp /opt/HBlink3/rules_SAMPLE.py /opt/HBlink3/rules.py

apt update

clear

printf "\e[1;33mEdit hblink.cfg and rules.py. Once done, test it out by typing:\e[0m\n\t\e[1;36mpython3 bridge.py\e[0m\n\n\e[1;33mIf all goes well, you can enable and start the service by typing:\e[0m\n\t\e[1;36msystemctl enable hblink\e[0m\n\t\e[1;36msystemctl start hblink\e[0m\n\n"

cd /opt/HBlink3
