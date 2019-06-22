FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates \
                                               gcc \
                                               unzip \
                                               wget \
                                               zip \
                                               gcc-avr \
                                               binutils-avr \
                                               avr-libc \
                                               dfu-programmer \
                                               dfu-util \
                                               gcc-arm-none-eabi \
                                               binutils-arm-none-eabi \
                                               libnewlib-arm-none-eabi \
                                               make \
                                               git-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

RUN cd / && \
    git clone https://github.com/qmk/qmk_firmware.git && \
    mkdir -p qmk_firmware/keyboards/ergodox_ez/keymaps/warreq && \
		cd /qmk_firmware && \
		make git-submodule

WORKDIR /qmk_firmware
CMD make ergodox_ez:warreq && \
		cp ergodox_ez_warreq.hex keyboards/ergodox_ez/keymaps/warreq
