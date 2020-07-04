#!/bin/bash

apt update && apt upgrade -y
apt install -y python3-twisted

cp -r ./n0mjs710/* /opt/
cp -r ./systemd/hblink.service /lib/systemd/system/

cd /opt/dmr_utils3
./install.sh

cd /opt/HBlink3
./install.sh

cp hblink-SAMPLE.cfg hblink.cfg
cp rules_SAMPLE.py rules.py

echo "Edit hblink.cfg and rules.py. Once done, test it out with "python3 bridge.py"
echo "If all goes well, you can enable and start the service by typing:"
echo "sudo systemctl enable hblink"
echo "sudo systemctl start hblink"
