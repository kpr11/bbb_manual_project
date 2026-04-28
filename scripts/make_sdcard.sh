#!/bin/bash
set -e

# Base directory
BASE=$(pwd)

# Output directories
OUT=$BASE/target/images
BOOT=$OUT/boot
ROOTFS=$OUT/rootfs

echo "Creating directories..."
mkdir -p $BOOT
mkdir -p $ROOTFS

echo "Copying boot files..."

cp $BASE/u-boot/MLO $OUT/
cp $BASE/u-boot/u-boot.img $OUT/
cp $BASE/linux7.0/arch/arm/boot/zImage $BOOT/
cp $BASE/linux7.0/arch/arm/boot/dts/ti/omap/am335x-boneblack.dtb $BOOT/

echo "Extracting rootfs..."

sudo tar -xvf $BASE/buildroot/output/images/rootfs.tar -C $ROOTFS/

sync
echo "SD card image prepared in $OUT"
