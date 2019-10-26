#!/bin/sh
#
BASE_FOLDER="/etc/update-motd.d"

if [ -w $BASE_FOLDER ]; then

  rm -rf $BASE_FOLDER
  mkdir $BASE_FOLDER
  echo  "${LBLUE}Base-folder cleaned..${NC}"


  cp -R original_files/.  $BASE_FOLDER
  echo  "${LBLUE}Original files copied back..${NC}"

  echo  "${LBLUE}correcting permissions..${NC}"
  chown -R root:root $BASE_FOLDER
  chmod -R 755 $BASE_FOLDER

  echo  "${LBLUE}Everything Finished... ${NC}"

else
 echo "Not writable: $BASE_FOLDER\nPlease run this script in sudo mode"
fi
