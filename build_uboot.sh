#!/bin/bash
set -e

if [ ! -d u-boot ]; then
    git clone --depth=1 --branch v2023.10 https://github.com/u-boot/u-boot.git u-boot 
fi

cd u-boot
make distclean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- am335x_evm_defconfig 
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j$(nproc) 
