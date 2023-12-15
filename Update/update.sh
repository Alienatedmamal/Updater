#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../../../ && pwd)"
source "$DIR/config.sh"


echo "Updating Packages...."
sleep 2 
cp menu $DIR/AMAP/Files/Images/
