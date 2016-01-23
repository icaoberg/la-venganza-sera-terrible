#!/bin/bash

for I in {1..100}
do
	wget -nc  --output-document=temp.html http://venganzasdelpasado.com.ar/posts/page/$I
	grep "mp3" *.html | grep "http://venganzasdelpasado.com.ar" | grep "audio/mpeg" | cut -d"'" -f 2 | xargs wget -nc 
	rm -fv *.html
done
