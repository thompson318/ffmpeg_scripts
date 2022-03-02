#! /bin/bash

input_name=$1 
outwidth=$2 # pixels
outheight=$3
x_offset=0
y_offset=0

if [ $# -ge 4 ]
then
	x_offset=$4
fi

if [ $# -ge 5 ]
then
	y_offset=$5
fi

suffix=${input_name##*.}
filename=${input_name%%.*}

fileout=$filename$outwidth$outheight$x_offset$y_offset.avi

echo $#

ffmpeg -i $input_name -filter:v "crop=$outwidth:$outheight:$x_offset:$y_offset" -acodec aac -vcodec h264 $fileout
