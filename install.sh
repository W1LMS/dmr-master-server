#!/bin/bash

apt update && apt upgrade -y
apt install -y python3-twisted

cp -r ./n0mjs710/* /opt/
cp -r ./systemd/hblink.service /lib/systemd/system/

cd /opt/dmr_utils3
. ./install.sh

cd /opt/HBlink3
. ./install.sh

cp hblink-SAMPLE.cfg hblink.cfg
cp rules_SAMPLE.py rules.py

apt update

clear

printf "Edit hblink.cfg and rules.py. Once done, test it out by typing:\n"
printf "    python3 bridge.py\n"
printf "\nIf all goes well, you can enable and start the service by typing:\n"
printf "    systemctl enable hblink\n"
printf "    systemctl start hblink\n"
