#!/bin/sh
#

BASE_FOLDER="/etc/update-motd.d"

NC='\e[0m'

GREEN='\e[32m'
LGREEN='\e[1;32m'

PURPLE='\e[35m'
LPURPLE='\e[1;35m'

BLUE='\e[34m'
LBLUE='\e[1;34m'

CIAN='\e[36m'
LCIAN='\e[1;36m'


cat << EOF
  _____         _   _   _____     _
 |   | |___ ___| |_| |_|   | |___| |_
 | | | | . |  _|  _|   | | | | -_|  _|
 |_|___|___|_| |_| |_|_|_|___|___|_|

 SETUP STARTED...

EOF

if [ -w $BASE_FOLDER ]; then

        if [ ! -d original_files ]; then

         mkdir original_files
         cp -R $BASE_FOLDER/. original_files
         echo  "${LBLUE}Original files copied..${NC}"

        fi
        rm -rf $BASE_FOLDER
        mkdir $BASE_FOLDER
        echo  "${LBLUE}Folder cleaned..${NC}"

        cp -R motd_files/. $BASE_FOLDER
        echo  "${LBLUE}New files copied..${NC}"

        echo  "${LGREEN}Pleas answer the following questions: ${NC}"
        read -p 'Server Name: ' server_name
        echo $server_name >> $BASE_FOLDER/motd_servername

        echo  "${LBLUE}********************************************${NC}"
        echo  "${LBLUE}Netwowk iterfaces:${NC}"
        echo  "${LBLUE}******************${NC}"

        ip a

        echo  "${LBLUE}********************************************${NC}"
        echo  "\n"

        read -p 'Network card: ' network_card
        echo $network_card >> $BASE_FOLDER/motd_networkcard

        chown -R root:root $BASE_FOLDER
        chmod -R 755 $BASE_FOLDER
        echo  ""
        echo  "${LBLUE}Everything Finished... ${NC}"

else
 echo "Not writable: $BASE_FOLDER\nPlease run this script in sudo mode"
fi
