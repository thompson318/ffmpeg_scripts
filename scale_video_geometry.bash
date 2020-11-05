#! /bin/bash

input_name=$1 
outwidth=$2 # pixels
outheight=$3

suffix=${input_name##*.}
filename=${input_name%%.*}

fileout=$filename$outwidth$outheight.avi

echo $#

ffmpeg -i $input_name -filter:v "scale=$outwidth:$outheight" -an -vcodec h264 $fileout
