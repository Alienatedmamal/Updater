#!/bin/bash
DIR="$(cd "$(dirname "$0")"/../../../../ && pwd)"
source "$DIR/config.sh"


echo '$TESTING="$SAY this is a test"' >> $DIR/AMAP/config.sh
cp menu $DIR/AMAP/Files/Images/menu
