# dmr-master-server

[![Build Status](https://travis-ci.com/W1LMS/dmr-master-server.svg?branch=master)](https://travis-ci.com/W1LMS/dmr-master-server)

This script automates the installation for 2 of N0MJS' repositories: [dmr_utils3](https://github.com/n0mjs710/dmr_utils3) and [HBlink3](https://github.com/n0mjs710/hblink3). It will perform an apt update and upgrade (Debian-based distro required), install python dependencies, dmr_utils3 and HBlink3. It also includes the systemd file to run as a service.

You will need to install git to download this repository by typing:

    sudo apt install -y git
    
To download and install the software, I recommend running the following commands as root (e.g. `sudo -s` or `sudo su`):

    git clone https://github.com/W1LMS/dmr-master-server.git
    cd dmr-master-server
    . ./install.sh ## Note the space between the periods

You should end up in the `/opt/HBlink3` folder when it is done. You will need to edit the files `hblink.cfg` and `rules.py` contained within that folder. When editing the `hblink.cfg` file, you may want to leave the `LOG_LEVEL` to `DEBUG` for the most verbose messages until you have confirmed everything is working well. When you're ready to go live, change it to `INFO` to receive just the relevant messages. 

The comments within the `hblink.cfg` explains in detail how to properly configure, but I will highlight a few items. The use of ACL's is very much encouraged to keep control of your server if letting others use it.

* `[OBP-1]` - This id the OpenBridge protocol used by DMR+/DMR-Marc and Brandmeister. If you are not going to use it, disable it by changing `ENABLED: True` to `ENABLED: False`. 

* `[MASTER-1]` This is the section that allows others to connect to this server. Enter a port number high enough not to be blocked by firewalls, and a passphrase for them to use to connect. 

* `[REPEATER-1]` - This section is for linking to other DMR master servers or other instances of hblink3 like this one. It is similar to configuring your hotspot to connect to Brandmeister or DMR+. So you must append 2 additional numbers to the `RADIO_ID` section (DMR ESSID). If your DMR ID were 1234567, Under `RADIO_ID`, you would enter 123456701. Any two numbers will work (01-99), as long as you are not using them somewhere else (no duplicates). From surfing the web and YouTube, it seems this is the method many people use to connect to Brandmeister. If you are setting your server up to be private only and not link out to other servers, then you can disable it.

* `[XLX-1]` - Lastly, this section is for linking to DStar DCS/XLX repeaters. You can disable it if you're not going to use it.

The `rules.py` file contains the settings for creating bridge groups or conference bridges. Here, you will specify how each of the systems just mentioned above, will connect to, or bridge with your server. Again, there is a detailed comment in that file explaining how to configure it.

For additional help with this, visit [DVSwitch on Groups.io](https://dvswitch.groups.io/). There is a wealth of information on this and other related software. You can also visit [WB4ULK's website](http://www.chrishoodblog.com/make-your-own-dmr-server/) or watch his YouTube videos below as this script is based on his guide.

To launch, type: 

    python3 bridge.py 
    
Once everything is running smoothly, you can enable and start the service by typing:

    sudo systemctl enable hblink

Then reboot your device. You can monitor the logs by typing:

    tail -f /tmp/hblink.log
    
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
