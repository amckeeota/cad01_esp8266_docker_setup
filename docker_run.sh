#!/bin/bash
if [ $# -eq 0 ]
  then
    echo -e "Please provide the USB port to which the 8266 is attached (eg. /dev/ttyUSB0)"
else
    docker run -v $PWD:/home --device=$1 --rm -it dockerinit
fi
