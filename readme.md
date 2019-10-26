# North Web Solution - Linux MOTD creator
*TO USE THIS APPLICATION YOU NEED TO RUN THE SETUP IN SUDO MODE*

result login screen:
```
 _____         _   _   _____     _
|   | |___ ___| |_| |_|   | |___| |_
| | | | . |  _|  _|   | | | | -_|  _|
|_|___|___|_| |_| |_|_|_|___|___|_|

Local-time: 10/26/19 23:40:24

Name...............: PI_3b+
Hostname...........: NorthMedia
Distro.............: Raspbian 9.9
Version............: 4.19.42-v7+
Uptime.............: 2 days, 3 hours, 1 minutes

CPU................: ARMv7 Processor rev 4 (v7l)
CPU Load...........: 0.00, 0.00, 0.00
Running Processes..: 135

Total Memory.......: 926MB
Used Memory........: 165MB
Free Memory........: 38MB

Disk...............: 30G
Used Disk..........: 4.1G / 15%
Free Disk..........: 25G

Swap...............: 99M
Free Swap..........: 99M

Public Address.....:  inet 192.168.0.250 netmask 255.255.255.0 broadcast 192.168.0.255

Welcome root at NorthMedia...

Last login: Sat Oct 26 23:15:48 2019 from 192.168.0.200
pi@NorthMedia:~ $
```


## Setup

Clone the repo with:
```
git clone git@github.com:gaboreszaki/linux-motd.git ~/linux-motd
```

Run the following command:
```
cd ~/linux-motd && sudo chmod +x setup.sh && sudo ./setup.sh
```

## Update
```
cd ~/linux-motd/ && git pull && cd ~/ && sudo chmod +x ~/linux-motd/update.sh && sudo ~/linux-motd/update.sh
```

## Uninstall
*Copies back the original files and completely remove the project*
```
cd ~/ && sudo chmod +x ~/linux-motd/remove.sh && sudo ~/linux-motd/remove.sh  && sudo rm -rf ~/linux-motd
```
