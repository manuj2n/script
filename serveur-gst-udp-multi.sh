#!/bin/bash
raspivid -t 0 -rot 0 -w 480 -h 260 -fps 10 -b 120000 -o - | gst-launch-1.0 -vvv fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! gdppay ! udpsink host=239.0.0.1 auto-multicast=true port=8090
