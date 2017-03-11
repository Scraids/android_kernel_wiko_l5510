#!/bin/bash

export ARCH=arm

export CROSS_COMPILE=~/android/toolchain/arm-eabi-4.8/bin/arm-eabi-

make cyanogenmod_l900_defconfig

START=$(date +%s)

make -j20

END=$(date +%s)
BUILDTIME=$((END - START))
B_MIN=$((BUILDTIME / 60))
B_SEC=$((BUILDTIME - E_MIN * 60))
echo -ne "\033[32mBuildtime: "
[ $B_MIN != 0 ] && echo -ne "$B_MIN min(s) "
echo -e "$B_SEC sec(s)\033[0m"
