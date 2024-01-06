#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"


echo "Updater Is Now Running"
sleep 2
#echo "Updating Wipeconfigure.sh...."
#sleep 1 
#cp -f $DIR/Updater/Update/wipeconfigure.sh $DIR/Files/Scripts/
#echo "Wipeconfigure Updated"
#sleep 2
echo "Updating Fullwipe.sh...."
sleep 1 
cp -f $DIR/Updater/Update/Fullwipe.sh $DIR/Files/Scripts/
echo "Fullwipe Updated"
sleep 2 
echo "Updating Mapwipe.sh...."
sleep 1 
cp -f $DIR/Updater/Update/Mapwipe.sh $DIR/Files/Scripts/
echo "Mapwipe Updated"
sleep 2 
echo "Updating Logo...."
sleep 1 
cp -f $DIR/Updater/Update/logo $DIR/Files/Images/
echo "Logo Updated" || echo "Failed to Updated"
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
