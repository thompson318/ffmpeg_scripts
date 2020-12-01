#! /bin/bash

input_name=$1 # as hh:mm:ss
starttime=$2 # as hh:mm:ss

suffix=${input_name##*.}
filename=${input_name%%.*}

st=$(echo $starttime | tr -d :)
fileout=$filename$st.jpg

ffmpeg -ss $starttime  -i $input_name -vframes 1 -q:v 1 $fileout
