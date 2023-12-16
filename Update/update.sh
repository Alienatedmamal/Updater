#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../../../ && pwd)"
source "$DIR/AMAP/config.sh"

echo "Updating Packages...."
sleep 2
echo "Installing new Menu"
sleep 1
cp -f $DIR/AMAP/Files/Updater/Update/menu $DIR/AMAP/Files/Images
echo "Adding new parameters"
sleep 2
echo 

echo 
cat $DIR/AMAP/Files/Updater/Update/AMAP.sh >> $DIR/AMAP/AMAP.sh
sleep 2
