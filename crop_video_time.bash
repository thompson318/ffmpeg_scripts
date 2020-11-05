#! /bin/bash

input_name=$1 # as hh:mm:ss
starttime=$2 # as hh:mm:ss
duration=$3

suffix=${input_name##*.}
filename=${input_name%%.*}

st=$(echo $starttime | tr -d :)
dur=$(echo $starttime | tr -d :)
fileout=$filename$st$dur.$suffix

ffmpeg -ss $starttime  -i $input_name -t $duration -acodec copy -vcodec copy $fileout
