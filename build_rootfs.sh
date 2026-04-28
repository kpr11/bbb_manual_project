#!/bin/bash
set -e

if [ ! -d buildroot ]; then
    git clone https://github.com/buildroot/buildroot.git
fi

cd buildroot
make beaglebone_defconfig
make -j$(nproc)
