#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"


echo "Updater Is Now Running"
sleep 2
echo "Updating Version File...."
sleep 2
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
echo "Version File Updated" || echo "Version File FAILD to Update"
sleep 2
cat $DIR/Updater/Update/Updates
sleep 5
echo "Press ENTER to continue"
read -r
exit 0 
