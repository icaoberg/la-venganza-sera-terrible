#!/bin/bash

if [ $# -eq 0 ]; then
		MAX_NUMBER_OF_PAGES=5
else
		MAX_NUMBER_OF_PAGES=$1
fi
echo "Setting maximum number of pages to "$MAX_NUMBER_OF_PAGES

for ((I=0; I<=MAX_NUMBER_OF_PAGES; I++))
do
	wget -nc --quiet --output-document=temp.html http://venganzasdelpasado.com.ar/posts/page/$I
	echo "Attempting to download podcasts from page number "$I
	grep "mp3" *.html | grep "http://venganzasdelpasado.com.ar" | grep "audio/mpeg" | cut -d"'" -f 2 | xargs wget -nc
	rm -f *.html
done
