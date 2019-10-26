# North Web Solution - Linux MOTD creator
*TO USE THIS APPLICATION YOU NEED TO RUN THE SETUP IN SUDO MODE*

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
