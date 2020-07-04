# dmr-master-server

[![Build Status](https://travis-ci.com/W1LMS/dmr-master-server.svg?branch=master)](https://travis-ci.com/W1LMS/dmr-master-server)

This script automates the installation for 2 of N0MJS' repositories: [dmr_utils3](https://github.com/n0mjs710/dmr_utils3) and [HBlink3](https://github.com/n0mjs710/hblink3). The script has been tested on a fresh Debian 9 install of a VPS. It will perform an apt update and upgrade, install python dependencies, dmr_utils3 and HBlink3. It also includes the systemd file to run as a service.

You will need to install git to download this repository by typing:

    sudo apt install -y git
    
To download and install the software, I recommend running the following commands as root:

    git clone https://github.com/W1LMS/dmr-master-server.git
    cd dmr-master-server
    . ./install.sh # Note the space between the periods

Go to the `/opt/HBlink3` folder when it is done. You will need to edit the files `hblink.cfg` and `rules.py` contained within that folder. You may want to leave the `LOG_LEVEL` to `DEBUG` for the most verbose messages until you have confirmed everything is working well. When you're ready to go live, change it to `INFO` to receive just the relevant messages. 

For help with this, visit [DVSwitch on Groups.io](https://dvswitch.groups.io/). There is a wealth of information on this and other related software. You can also visit [WB4ULK's website](http://www.chrishoodblog.com/make-your-own-dmr-server/) or watch his YouTube videos below as this script is based on his guide.

To launch, type: 

    python3 bridge.py 
    
Once everything is running smoothly, you can enable and start the service by typing:

    sudo systemctl enable hblink
    sudo systemctl start hblink

### DMR Master Server: Part 3 - Configure hblink.cfg
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/oXRCW-5JMws/0.jpg)](http://www.youtube.com/watch?v=oXRCW-5JMws "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 4 - Configure rules.py
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=t9mbNnjI0Hw "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 5 - Starting bridge.py
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=UbnBSXWlHPQ "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 6 - Configure MMDVM Hotspot
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=iIAMXdVAM84 "WB4ULK's HBlink3 Guide")

### DMR Master Server: Part 7 - Adjust Logging Level
[![WB4ULK's HBlink3 Guide](http://img.youtube.com/vi/UbnBSXWlHPQ/0.jpg)](http://www.youtube.com/watch?v=7QLyD6IVYjQ "WB4ULK's HBlink3 Guide")
