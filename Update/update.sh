#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../ && pwd)"
source "$DIR/config.sh"

# Current Version 
desired_version="2.0.6"

# File to check version. 
version_file="$DIR/Files/version.txt"

# Check if the file exists
if [ -e "$version_file" ]; then
    # Read the version number from the file
    current_version=$(cat "$version_file")

    # Compare the current version with the desired version
    if [ "$current_version" = "$desired_version" ]; then
        echo "Version is already up to date. Stopping further actions."
        exit 0  # Exit with success status
    else
        echo "New Version Available"
		echo "Updating to latest version...."
        echo "Updating Packages...."
sleep 2
echo "Updating Menu...."
sleep 2
cp -f $DIR/Updater/Update/menu $DIR/Files/Images/
sleep 1
echo "New Configuration Image...."
sleep 2
cp -f $DIR/Updater/Update/backup $DIR/Files/Images/
sleep 1
echo "Version Change v2.0.6..." 
sleep 3
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
echo "Logo Update...."
sleep 1
cp -f $DIR/Updater/Update/logo $DIR/Files/Images/
echo "Updates have been installed"
sleep 2
cat $DIR/Updater/Update/Updates
sleep 5
    fi
else
    sleep 2
echo "Updating Menu...."
sleep 2
cp -f $DIR/Updater/Update/menu $DIR/Files/Images/
sleep 1
echo "New Configuration Image...."
sleep 2
cp -f $DIR/Updater/Update/backup $DIR/Files/Images/
sleep 1
echo "Version Change v2.0.6..." 
sleep 3
cp -f $DIR/Updater/Update/version.txt $DIR/Files/
echo "Logo Update...."
sleep 1
cp -f $DIR/Updater/Update/logo $DIR/Files/Images/
echo "Updates have been installed"
sleep 2
cat $DIR/Updater/Update/Updates
sleep 5
fi
