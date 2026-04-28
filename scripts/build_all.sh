#!/bin/bash

echo "===== Building U-Boot ====="
bash ../build_uboot.sh

echo "===== Building Kernel ====="
bash ../build_kernel.sh

echo "===== Building RootFS ====="
bash ../build_rootfs.sh

echo "===== DONE ====="
