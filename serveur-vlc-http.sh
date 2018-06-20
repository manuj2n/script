#!/bin/bash
raspivid -w 640 -h 360 -fps 15 -b 50000 -n -t 0 -o -| cvlc -vvv stream://dev/stdin --sout '#standart{access=http,mux=ts,dst=:8090}' :demux=h264 &

