#! /bin/bash

input_name=$1

filename=${input_name%%.*}

fileout=$filename.gif

ffmpeg -y -i $input_name -vf palettegen palette.png
ffmpeg -y -i $input_name -i palette.png -filter_complex paletteuse -r 10 $fileout
