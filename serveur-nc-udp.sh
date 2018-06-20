#!/bin/bash
raspivid -w 320 -h 240 -fps 15 -n -vs -ex auto -awb auto -b 200000 -t 0 -o -| nc -v -u 10.8.0.22 8090 &

