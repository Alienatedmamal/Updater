#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"

echo "Updating Packages...."
sleep 2
echo "Version Change v2.0.6..." 
sleep 3
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
sleep 1
echo "Updates have been installed"
sleep 2
cat $DIR/Updater/Update/Updates
sleep 5
exit 0 
