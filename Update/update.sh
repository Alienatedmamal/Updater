#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../../../ && pwd)"
source "$DIR/AMAP/config.sh"





echo "Updating Packages...."
sleep 2
echo "Installing new Menu"
echo $DIR/AMAP/Files/Updater

#cp -f $DIR/AMAP/Files/Updater/Update/menu $DIR/AMAP/Files/Images
echo "Finished"
