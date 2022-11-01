#!/usr/bin/env bash

#Where is Blender? If in your user Applications folder, comment out the first one and uncomment the second.
BLENDERLOCATION='/Applications/Blender'
#BLENDERLOCATION="/Users/${USER}/Applications/Blender"

#Where do you want Blender to store its log file? By default, it'll stash it in the root of your home folder
BLENDERLOG="/Users/${USER}/blender.log"

BLENDERLOCATION="${BLENDERLOCATION}.app/Contents/MacOS/Blender"

if (ps aux | grep Blender | grep -v grep > /dev/null)
then
	#Blender is already running, bring it to front
	osascript -e 'tell application "Blender" to activate'
else
	rm $BLENDERLOG && $BLENDERLOCATION > $BLENDERLOG 2>&1 &
fi
