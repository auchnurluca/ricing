#!/bin/bash

song=$(playerctl -p spotify metadata --format "{{ artist }} - {{ title }}" 2>/dev/null)

if [ -n "$song" ]; then
    echo "$song"
else
    echo  "no music :)"
fi