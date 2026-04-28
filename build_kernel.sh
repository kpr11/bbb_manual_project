#!/bin/bash
set -e

if [ ! -d linux-7.0 ]; then
    git clone --depth=1 --branch v7.0 https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git linux-7.0 
fi

cd linux-7.0

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- mrproper

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- omap2plus_defconfig

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j$(nproc)
