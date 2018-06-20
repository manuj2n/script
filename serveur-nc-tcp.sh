#!/bin/bash
raspivid -w 640  -h 380 -fps 10 -n -vs -ex auto -awb auto -b 120000 -t 0 -o -| nc -l -p 8090 &
