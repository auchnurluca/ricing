#!/bin/bash

VOLUME=$(pamixer --get-volume)
MUTED=$(pamixer --get-mute)

if [ "$MUTED" = "true" ]; then
  ICON=""
else
  if [ "$VOLUME" -lt 30 ]; then
    ICON=""
  elif [ "$VOLUME" -lt 70 ]; then
    ICON=""
  else
    ICON=""
  fi
fi

# Write JSON output to temporary file
echo "{\"text\": \"$VOLUME% $ICON\"}" > /tmp/waybar-volume
