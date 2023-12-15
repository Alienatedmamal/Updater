#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
source $DIR/config.sh

echo "Moving files to Update folder"
sleep 1
mv -f Update $DIR/AMAP/Files/Update
