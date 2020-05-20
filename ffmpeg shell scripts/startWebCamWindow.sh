#!/bin/bash

ffplay -window_title "pi-cam" /dev/video0 -video_size 1920x1080  -vf crop=400:500:300:50 -framerate 20