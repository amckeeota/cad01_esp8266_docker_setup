FROM ubuntu:18.04

RUN apt update && apt install -y \
	gcc \
	git \
	wget \
	make \
	libncurses-dev \
	flex \
	bison \
	gperf \
	python \
	python-pip \
	python-serial \
	curl

RUN mkdir esp && \
    cd esp && \
    curl https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz --output xtensa.tar.gz && \
    tar -xzf xtensa.tar.gz

ENV PATH=$PATH:/esp/xtensa-lx106-elf/bin
ENV IDF_PATH=/esp/ESP8266_RTOS_SDK

RUN cd esp && \
    python --version && \
    git clone --recursive https://github.com/espressif/ESP8266_RTOS_SDK.git && \
    cd ESP8266_RTOS_SDK && \
    python -m pip install --user -r requirements.txt

RUN echo 'cd /esp/ESP8266_RTOS_SDK/examples/get-started/hello_world' >> /etc/bash.bashrc
