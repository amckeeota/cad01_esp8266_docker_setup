#!/bin/bash

docker run -v $PWD:/home --device=$1 --rm -it dockerinit
