#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"

echo "Updating Version...."
sleep 2
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
sleep 2
cat $DIR/Updater/Update/Updates
sleep 5
exit 0 
