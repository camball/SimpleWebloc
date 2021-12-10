#!/bin/sh
# create a webloc file for easy access to a website.
# this script creates the webloc file as an XML plist file, opposed to a binary plist file.

if [ "$#" -ne 2 ]; then
    echo "Usage: make-webloc.sh <filename> <URL>"
    exit
fi

FILENAME="$1"
URL="$2"

if [ -e "$FILENAME.webloc" ]; then
    while true; do
        read -p "$FILENAME.webloc already exists... overwrite it? [y/n]: " RESPONSE
        case $RESPONSE in
            [Yy]* ) break;;
            [Nn]* ) echo ""; echo "Exiting..."; exit;;
            * ) echo "Please answer Y or N.";;
        esac
    done
fi

echo "<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>URL</key>
	<string>$URL</string>
</dict>
</plist>" > "$FILENAME.webloc"