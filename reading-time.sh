#!/bin/bash

# 183 words per min, from https://thereadtime.com/
SPEED=183
#12 seconds per image, from https://www.freecodecamp.org/news/how-to-more-accurately-estimate-read-time-for-medium-articles-in-javascript-fb563ff0282a/
PERIMAGE=12

if [ -z "$1" ]; then
  echo "Must provide an input adoc file" 2>&1
  exit 1
fi

if [ ! -r "$1" ]; then
  echo "Cannot read input adoc file: $1" 2>&1
  exit 1
fi

WORDS=$(wc -w $1 | awk '{print $1}')
PNGS=$(grep -c '.png' $1)
SVGS=$(grep -c '.svg' $1)

let "PNGS = PNGS + SVGS"
let "MINTXT = $WORDS / $SPEED"
let "FRACTXT = $WORDS % $SPEED"
let "HALFSPEED = $SPEED / 2"
let "MINPNG = $PNGS * $PERIMAGE / 60"
let "FRACPNG = $PNGS * $PERIMAGE % 60"

## Round half min reading and 30 sec images up
let "MINUTES = $MINTXT + $FRACTXT / $HALFSPEED + $MINPNG + $FRACPNG / 30"

if [ $MINUTES = 0 ]; then
  MINUTES=1
fi

#echo "$MINTXT for text and $MINPNG for images"
#echo "$FRACTXT for text and $FRACPNG for images"
echo "Counted $WORDS words and $PNGS images, for a reading time of $MINUTES minutes"

# Change the attribute at the heading of the file
sed -i "1 s/\:time_estimate\:.*$/\:time_estimate\: $MINUTES/" $1

