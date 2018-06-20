#!/bin/bash
raspivid -t 0 -w 480 -h 260 -fps 10 -b 120000 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! gdppay ! tcpserversink host=10.8.0.18 port=8090

