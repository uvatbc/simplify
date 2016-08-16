#!/bin/bash

if [ -x $1 ] ; then
    echo "Need input file name"
    exit 1
fi

INPUT=$1

timidity $INPUT -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k $INPUT.mp3
