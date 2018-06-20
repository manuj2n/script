#!/bin/bash	
gst-launch-1.0 -v tcpclientsrc host=10.8.0.18 port=8090  ! gdpdepay ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink sync=false
