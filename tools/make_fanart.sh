#!/bin/bash

SRC="https://images.pexels.com/photos/1117210/pexels-photo-1117210.jpeg?crop=entropy&cs=srgb&dl=pexels-david-dibert-1117210.jpg&fit=crop&fm=jpg&h=5504&w=8256"

BRO="Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"

#WID=1920
#SIZ=${WID}x1080

WID=1280
SIZ=${WID}x720

wget -U "${BRO}" "${SRC}" -O fanart-src.jpg

convert fanart-src.jpg -quality 70 -resize ${WID}x -thumbnail ${WID}x -gravity Center -crop ${SIZ}+0+0 ../docs/fanart.jpg

rm fanart-src.jpg
