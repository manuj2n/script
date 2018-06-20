#!/bin/bash
raspivid -w 640 -h 360 -fps 15 -b 50000 -f -t 0 -o -| cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8090/}' :demux=h264 &

