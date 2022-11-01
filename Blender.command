#!/usr/bin/env bash

#Where is Blender (Main Applications vs User/Alternate Applications folder)
BLENDERLOCATION='/Applications/Blender'

#Where do you want Blender to store its log file?
BLENDERLOG='/Path/To/Where/You/Want/It/blender.log'

BLENDERLOCATION="${BLENDERLOCATION}.app/Contents/MacOS/Blender"

if (ps aux | grep Blender | grep -v grep > /dev/null)
then
	#Blender is already running, bring it to front
	osascript -e 'tell application "Blender" to activate'
else
	rm $BLENDERLOG && $BLENDERLOCATION > $BLENDERLOG 2>&1 &
fi
