# Code-A-Day 01 - ESP8266 Docker Environment
Dockerfile for ESP8266 setup

## Purpose:
Today's build is a Dockerfile that will setup your ESP8266 environment so that you can easily just run `make flash` without installing toolchains or environments. It also keeps other installations or environment variables from affecting this installation.

## How to Run:
After cloning the repo, just
1. Run the build shell script
    ```
    ./docker_build.sh
      ```
    which will take some time to setup the development environment.

2. Make sure the ESP8266 is plugged in.
3. Run the "run" shell script.
    ```
    ./docker_run.sh [usb_device]
    ```
    where [usb_device] represents the location of the ESP8266. For example, you may run
    ```
    ./docker_run.sh /dev/ttyUSB0
    ```

After running these steps, you will be put into an interactive shell within the hello_world example folder where you can test by running
```
make menuconfig
```
and
```
make flash
```
like you would normally use a properly setup ESP8266 environment.