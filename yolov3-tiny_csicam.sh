#!/bin/bash
./darknet detector demo cfg/coco.data cfg/yolov3-tiny.cfg bin/yolov3-tiny.weights "nvarguscamerasrc ! video/x-raw(memory:NVMM), width=(int)1280, height=(int)720, format=(string)NV12, framerate=(fraction)60/1 ! nvvidconv flip-method=2 ! video/x-raw, width=(int)1280, height=(int)720, format=(string)BGRx ! videoconvert ! video/x-raw, format=(string)BGR ! appsink" -thresh 0.2
