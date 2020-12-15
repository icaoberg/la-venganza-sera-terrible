#!/bin/bash

DIRECTORY=$1

cd $DIRECTORY
for F in *.mp3
do
	echo $F
	SONG=$(echo $F | cut -d'_' -f2 | cut -d'.' -f1)
	ARTIST="Alejandro Dolina"
	ALBUM="La Venganza sera Terrible"
	TRACK=1
	TOTAL=1
	GENRE="Podcast"
	YEAR=$(echo $F | cut -d'_' -f2 | cut -d'.' -f1 | cut -d"-" -f1)
	id3tag --album="$ALBUM" --artist="$ARTIST" --song="$SONG" --track=$TRACK --total=$TOTAL --year=$YEAR $F
done
