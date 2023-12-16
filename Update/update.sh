#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"

echo "Updating Packages...."
sleep 2
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
sleep 1
echo "Updates have been installed"
sleep 2
cat $DIR/Updater/Update/Updates
sleep 5
exit 0 
