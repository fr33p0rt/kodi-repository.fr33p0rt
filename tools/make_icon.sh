#!/bin/bash

BAS=256

let "FS=BAS/4"
let "FSS=BAS*6/55"
let "TS=BAS/6"
let "SP=BAS/32"
let "OF=BAS/3"

convert -background black -fill white \
          -font "M+-1m-bold" -pointsize $FS label:"fr33p0rt" \
          -trim \
          icon-1.png

convert -size ${BAS}x${BAS} xc:black -gravity Center \
        icon-1.png -composite \
        -gravity East \
        ../docs/icon.png

rm icon-1.png
