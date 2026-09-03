#!/bin/sh

#
# Remote update script for RG351
#

make -j8 && 
sshpass -p "root" scp ./arch/arm64/boot/Image root@$1:/boot && 
sshpass -p "root" scp ./arch/arm64/boot/dts/rockchip/rk3326-rg351mp-linux.dtb root@$1:/boot && 
sshpass -p "root" ssh root@$1 /bin/sh -c "/sbin/reboot"

