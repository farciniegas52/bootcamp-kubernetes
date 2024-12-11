#!/bin/bash

while true; do
        echo $(date +%H:%M:%S)"<br>" >> /opt/index.html && \
        sleep 5
done