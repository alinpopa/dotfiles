#!/usr/bin/env sh

INPUT=$1
OUTPUT=$2

if [ -z ${INPUT} ]; then
  echo Input missing.
elif [ -z ${OUTPUT} ]; then
  echo Output missing.
else
  ffmpeg -i ${INPUT} ${OUTPUT}.mp4
  #mencoder ${INPUT} -o ${OUTPUT} -oac copy -ovc lavc -lavcopts vcodec=mpeg1video -of mpeg
fi

