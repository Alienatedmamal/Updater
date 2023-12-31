#!/bin/bash
DIR="$(cd "$(dirname "$0")/../../" && pwd)"
source "$DIR/config.sh"

# Ask for user input
read -p "Enter the Start date of wipe must include space (MN DY YR) e.g. 1 4 21 : " MN DY YR
read -p "Enter the End Date of wipe (YR MN DY) e.g. 1 18 24 : " OMN ODY OYR
read -p "Enter the Previous Seed (see WipeOutput.txt) : " OS
read -p "Enter the New map Seed: " NS
read -p "Is it a Full-wipe(including BP's) or a Map-wipe(BP's Not Included)? (Type 'Full' or 'Map'): " WIPE_TYPE

# Define the output file path
OUTPUT_FILE="$WIPER"

# Generate output based on the wipe type
if [ "$WIPE_TYPE" == "Full" ]; then
   WIPE_COMMAND="commands[\"20$OYR-$OMN-$ODY\"]=\"/home/$USERNAME/AMAP/Files/Scripts/./Fullwipe.sh && sed -i 's/$OS/$NS/g' /home/$USERNAME/lgsm/config-lgsm/rustserver/common.cfg ; sed -i 's/$OS/$NS/g' /home/$USERNAME/lgsm/config-lgsm/ru>
echo "$WIPE_COMMAND" >> "$OUTPUT_FILE"
elif [ "$WIPE_TYPE" == "Map" ]; then
    WIPE_COMMAND="commands[\"20$OYR-$OMN-$ODY\"]=\"/home/$USERNAME/AMAP/Files/Scripts/./Mapwipe.sh && sed -i 's/$OS/$NS/g' /home/$USERNAME/lgsm/config-lgsm/rustserver/common.cfg ; sed -i 's/$OS/$NS/g' /home/$USERNAME/lgsm/config-lgsm/ru>
 echo "$WIPE_COMMAND" >> "$OUTPUT_FILE"
else
    echo "Invalid wipe type. Please enter 'Full' or 'Map'."
    exit 1
fi

# Provide feedback to the user
echo "Wipe details have been written to $OUTPUT_FILE"
