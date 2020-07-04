# dmr-master-server

This script automates the installation for 2 of N0MJS' repositories: [dmr_utils3](https://github.com/n0mjs710/dmr_utils3) and [HBlink3](https://github.com/n0mjs710/hblink3). You will need to install git to download this repository by typing:

    sudo apt install -y git
    
I recommend running the following command from a sub-folder in your home directory (i.e.`~/Downloads`), or `/tmp`, to download and install:

    git clone https://github.com/W1LMS/dmr-master-server.git
    cd dmr-master-server
    chmod +x ./install.sh
    sudo ./install.sh

The script has been tested on a fresh Debian 9 install of a VPS. It will perform an apt update and upgrade, install python-twisted, and install dmr_utils3 & HBlink3. It also includes the systemd file to run as a service.

You will need to edit the `/opt/HBlink3/hblink.cfg` and `/opt/HBlink3/rules.py` prior to launching. To launch, type: 

    python3 /opt/HBlink3/bridge.py 
    
Once everything is running smoothly, you can enable and start the service by typing:

    sudo systemctl enable hblink
    sudo systemctl start hblink

For help with this, you can visit [WB4ULK's website](http://www.chrishoodblog.com/make-your-own-dmr-server/) or watch his YouTube videos below.

### DMR Master Server: Part 3 - Configure hblink.cfg
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/oXRCW-5JMws/0.jpg)](http://www.youtube.com/watch?v=oXRCW-5JMws "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 4 - Configure rules.py
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=t9mbNnjI0Hw "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 5 - Starting bridge.py
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=UbnBSXWlHPQ "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 6 - Configure MMDVM Hotspot
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=iIAMXdVAM84 "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 7 - Adjust Logging Level, Part 7
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=7QLyD6IVYjQ "WB4ULK's HBlink3 Guide")
