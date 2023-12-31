#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"


echo "Updater Is Now Running"
sleep 2
echo "Updating ReadMe.md...."
sleep 1
cp -f $DIR/Updater/Update/ReadMe.md $DIR
echo "ReadMe Updated"
sleep 1
echo "Updating Wipeconfigure.sh...."
sleep 1 
cp -f $DIR/Updater/Update/wipeconfigure.sh $DIR/Files/Scripts/
echo "Wipeconfigure Updated"
sleep 1
echo "Updating Schedule.sh...."
sleep 1 
cp -f $DIR/Updater/Update/Schedule.sh $DIR/Files/Scripts/
echo "Schedule Updated"
sleep 1
echo "Updating Fullwipe.sh...."
sleep 1 
cp -f $DIR/Updater/Update/Fullwipe.sh $DIR/Files/Scripts/
echo "Fullwipe Updated"
sleep 1 
echo "Updating Mapwipe.sh...."
sleep 1 
cp -f $DIR/Updater/Update/Mapwipe.sh $DIR/Files/Scripts/
echo "Mapwipe Updated"
sleep 1 
echo "Updating AMAP Dashboard...."
sleep 1 
cp -f $DIR/Updater/Update/AMAP.sh $DIR/
cp -f $DIR/Updater/Update/AMAPNC.sh $DIR/
echo "AMAP Dashboard Updated"
sleep 1 
echo "Updating Logo...."
sleep 1 
cp -f $DIR/Updater/Update/logo $DIR/Files/Images/
echo "Logo Updated" 
sleep 1
echo "Updating Version File...."
sleep 1
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
echo "Version File Updated" 
sleep 1
cat $DIR/Updater/Update/Updates
sleep 1
echo "Updater has finished"
echo "Press ENTER to continue"
read -r
exit 0 
