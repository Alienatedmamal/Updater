#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"


echo "Updater Is Now Running"
sleep 2
echo "Updating Wipe Configurator...."
sleep 2 
cp -f $DIR/Updater/Updater/wipeconfigure.sh $DIR/Files/Scripts/
echo "Wipe Configurator Updated" || echo "WIpe Configurator Failed to Update"
sleep 2
echo "Updating Version File...."
sleep 2
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
echo "Version File Updated" || echo "Version File FAILD to Update"
sleep 2
cat $DIR/Updater/Update/Updates
sleep 2
echo "Updater has finished"
echo "Press ENTER to continue"
read -r
exit 0 
