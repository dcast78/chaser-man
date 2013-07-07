#!/bin/bash
#raspivid -o - -t 9999999999 -hf -w 640 -h 360 -fps 25|cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8090}' :demux=h264
raspivid -o - -t 0 -vf  -w 640 -h 360 -fps 25 |cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8090}' :demux=h264
#raspivid -o - -t 0 -vf  -w 1024 -h 576 -fps 25 |cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8090}' :demux=h264
