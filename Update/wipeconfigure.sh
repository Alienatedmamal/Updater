#!/bin/bash
DIR="$(cd "$(dirname "$0")/../../" && pwd)"
source "$DIR/config.sh"

# Ask for user input
read -p "Enter the Year Month Day (20YY/MM/DD): " YR MN DY
OYR=$(echo "$YR" | tr -d '/')
OMN=$(echo "$MN" | tr -d '/')
ODY=$(echo "$DY" | tr -d '/')
read -p "Enter the old Seed: " OS
read -p "Enter the new Seed: " NS
read -p "Enter the Start date of last wipe Year Month Day (20YY/MM/DD): " OYR OMN ODY
OYR=$(echo "$OYR" | tr -d '/')
OMN=$(echo "$OMN" | tr -d '/')
ODY=$(echo "$ODY" | tr -d '/')
read -p "Is it a Full-wipe or a Map-wipe? (Type 'Full' or 'Map'): " WIPE_TYPE

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
