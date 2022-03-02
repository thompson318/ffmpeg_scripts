#!/bin/bash
#this should extract every nth frame of a video and write it to a new video. I 
#used to extract every 2nd image of video where every 2nd frame came from the left
#or right channel of a stereo stream.

input_name=$1
n=$2

filename=${input_name%%.*}

fileout=${filename}_${n}.avi
ffmpeg -i $input_name -vf "select='not(mod(n,$n))'" -c:v libx264 -preset slow $fileout

