#!/bin/bash
raspivid -w 640 -h 380 -fps 10 -b 120000 -f -t 0 -o -| cvlc -vvv stream:///dev/stdin --sout '#standart{access=http,mux=ts,dst=:8090}' :demux=h264 &

