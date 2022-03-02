now=$(date +%s)
out=/dev/shm/$now.jpg
ffmpeg -f video4linux2 -s 640x480 -i /dev/video2 -ss 0:0:3 -frames 1 $out
