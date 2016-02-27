# OpenWRT-NinuxBas

eseguire i seguenti comandi:

./scripts/feeds update -a && ./scripts/feeds install -a

cat ninuxbas-config >> .config

make defconfig
make  V=99 -j 1
