#!/bin/bash

echo "===== Building U-Boot ====="
bash scripts/build_uboot.sh

echo "===== Building Kernel ====="
bash scripts/build_kernel.sh

echo "===== Building RootFS ====="
bash scripts/build_rootfs.sh

echo "===== DONE ====="
