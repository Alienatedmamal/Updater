#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"

echo "Updating Packages...."
sleep 2
echo "Updating Menu...."
sleep 2
cp -f $DIR/Updater/Update/menu $DIR/Files/Images/
echo "Updates have been installed"
cat $DIR/Updater/Update/Updates
sleep 5
exit 0 
