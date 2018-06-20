#!/bin/bash	
gst-launch-1.0 -vvv udpsrc port=8090  ! gdpdepay ! rtph264depay ! avdec_h264 ! videoconvert ! autovideosink sync=false
