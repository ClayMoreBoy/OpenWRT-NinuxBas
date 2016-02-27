#!/bin/bash

if [ -d openwrt ]; then
	cd openwrt && git pull
fi

if [ ! -d openwrt ]; then
        git clone git://git.openwrt.org/15.05/openwrt.git
fi

if [ -d Firmware ]; then
        rm -rf Firmware
fi

if [ ! -d Firmware ]; then
        mkdir Firmware
fi


cat NinuxBas/banner > openwrt/package/base-files/files/etc/banner
cat NinuxBas/feeds.conf > openwrt/feeds.conf
cat NinuxBas/version.mk > openwrt/include/version.mk

cd openwrt

./scripts/feeds update -a && ./scripts/feeds install -a &&\

cat ../NinuxBas/ninuxbas-config >> .config

make defconfig && make  V=99 -j 1 &&\
mv bin/ar71xx/*.bin ../Firmware/
