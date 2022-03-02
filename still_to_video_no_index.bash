files=*.png

index=0

for file in $files
do
	ln -s $file $index.png
	index=$(($index + 1))
done


ffmpeg -r 10 -f image2 -s 1920x1080 -i %d.png -vcodec libtheora -qscale:v 10 out.ogv

