#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../../../ && pwd)"
source "$DIR/AMAP/config.sh"

echo "Updating Packages...."
sleep 2
echo "Installing new Menu"
sleep 1
cp -f $DIR/AMAP/Files/Updater/Update/menu $DIR/AMAP/Files/Images
sleep 1 
echo "Updates have been installed"
sleep 1
exit 0 
