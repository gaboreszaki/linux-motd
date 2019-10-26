#!/bin/sh
#
BASE_FOLDER="/etc/update-motd.d"

if [ -w $BASE_FOLDER ]; then

  cp -R linux-motd/motd_files/.  $BASE_FOLDER
  echo  "${LBLUE}New files copied..${NC}"

  echo  "${LBLUE}correcting permissions..${NC}"
  chown -R root:root $BASE_FOLDER
  chmod -R 755 $BASE_FOLDER

  echo  "${LBLUE}Update complete... ${NC}"

else
 echo "Not writable: $BASE_FOLDER\nPlease run this script in sudo mode"
fi
