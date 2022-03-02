ffmpeg -i  loud.mp4 -filter_complex [0:a:0]volume=volume=4.0:enable=\'between\(t,0,16\)\'[aout] -map [aout] louder.aac
ffmpeg-normalize
ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output.mp4

