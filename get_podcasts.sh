#!/bin/bash

if [ $# -eq 0 ]; then
		MAX_NUMBER_OF_PAGES=5
else
		MAX_NUMBER_OF_PAGES=$1
fi
echo "Setting maximum number of pages to "$MAX_NUMBER_OF_PAGES

for ((I=1; I<=MAX_NUMBER_OF_PAGES; I++))
do
	TMPFILE=/tmp/$(uuidgen)
	wget -nc --no-check-certificate --output-document=$TMPFILE http://venganzasdelpasado.com.ar/posts/page/$I
	echo "Attempting to download podcasts from page number "$I
	cat $TMPFILE | grep mp3 | grep source | cut -d'"' -f2 | xargs wget -nc
	if [ -f $TMPFILE ]; then rm -f $TMPFILE; fi
done
