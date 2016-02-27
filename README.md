# OpenWRT-NinuxBas

eseguire i seguenti comandi:

./scripts/feeds update -a && ./scripts/feeds install -a

cat >> .config << EOF
# CUSTOM NINUX
	CONFIG_IMAGEOPT=y
	CONFIG_VERSIONOPT=y
	CONFIG_VERSION_DIST="NINUX"
	CONFIG_VERSION_NICK=""
	CONFIG_VERSION_NUMBER=""
	CONFIG_VERSION_REPO="http://downloads.openwrt.org/chaos_calmer/15.05/%S/generic/packages"
	CONFIG_VERSION_MANUFACTURER=""
	CONFIG_VERSION_PRODUCT=""
	CONFIG_VERSION_HWREV=""
	CONFIG_VERSION_FILENAMES=y
	CONFIG_PACKAGE_ca-certificates=y
	CONFIG_PACKAGE_libpthread=y
	CONFIG_PACKAGE_librt=y
	CONFIG_PACKAGE_rpcd=y
	CONFIG_PACKAGE_kmod-crypto-aead=y
	CONFIG_PACKAGE_kmod-crypto-des=y
	CONFIG_PACKAGE_kmod-crypto-hash=y
	CONFIG_PACKAGE_kmod-crypto-manager=y
	CONFIG_PACKAGE_kmod-crypto-md5=y
	CONFIG_PACKAGE_kmod-crypto-pcompress=y
	CONFIG_PACKAGE_kmod-crypto-sha1=y
	CONFIG_PACKAGE_kmod-crypto-sha256=y
	CONFIG_PACKAGE_kmod-8021q=y
	CONFIG_PACKAGE_kmod-ipip=y
	CONFIG_PACKAGE_kmod-iptunnel=y
	CONFIG_PACKAGE_kmod-iptunnel4=y
	CONFIG_PACKAGE_kmod-tun=y
	CONFIG_PACKAGE_libiwinfo-lua=y
	CONFIG_PACKAGE_lua=y
	CONFIG_PACKAGE_libpolarssl=y
	CONFIG_PACKAGE_libcurl=y
	CONFIG_LIBCURL_FILE=y
	CONFIG_LIBCURL_FTP=y
	CONFIG_LIBCURL_HTTP=y
	CONFIG_LIBCURL_COOKIES=y
	CONFIG_LIBCURL_NO_SMB="!"
	CONFIG_LIBCURL_PROXY=y
	CONFIG_PACKAGE_liblua=y
	CONFIG_PACKAGE_liblzo=y
	CONFIG_PACKAGE_libubus-lua=y
	CONFIG_PACKAGE_libuci-lua=y
	CONFIG_PACKAGE_libustream-polarssl=y
	CONFIG_PACKAGE_luci=y
	CONFIG_PACKAGE_luci-ssl=y
	CONFIG_PACKAGE_luci-base=y
	CONFIG_PACKAGE_luci-mod-admin-full=y
	CONFIG_PACKAGE_luci-app-firewall=y
	CONFIG_PACKAGE_luci-theme-bootstrap=y
	CONFIG_PACKAGE_luci-proto-ipv6=y
	CONFIG_PACKAGE_luci-proto-ppp=y
	CONFIG_PACKAGE_luci-lib-httpclient=y
	CONFIG_PACKAGE_luci-lib-ip=y
	CONFIG_PACKAGE_luci-lib-json=y
	CONFIG_PACKAGE_luci-lib-jsonc=y
	CONFIG_PACKAGE_luci-lib-luaneightbl=y
	CONFIG_PACKAGE_luci-lib-nixio=y
	CONFIG_PACKAGE_luci-lib-px5g=y
	CONFIG_PACKAGE_oonf-init-scripts=y
	CONFIG_PACKAGE_oonf-olsrd2=y
	CONFIG_PACKAGE_ip-full=y
	CONFIG_PACKAGE_openvpn-polarssl=y
	CONFIG_OPENVPN_polarssl_ENABLE_LZO=y
	CONFIG_OPENVPN_polarssl_ENABLE_SERVER=y
	CONFIG_OPENVPN_polarssl_ENABLE_HTTP=y
	CONFIG_OPENVPN_polarssl_ENABLE_SOCKS=y
	CONFIG_OPENVPN_polarssl_ENABLE_FRAGMENT=y
	CONFIG_OPENVPN_polarssl_ENABLE_MULTIHOME=y
	CONFIG_OPENVPN_polarssl_ENABLE_PORT_SHARE=y
	CONFIG_OPENVPN_polarssl_ENABLE_DEF_AUTH=y
	CONFIG_OPENVPN_polarssl_ENABLE_PF=y
	CONFIG_OPENVPN_polarssl_ENABLE_SMALL=y
	CONFIG_PACKAGE_uhttpd=y
	CONFIG_PACKAGE_uhttpd-mod-ubus=y
	CONFIG_PACKAGE_iperf3=y
	CONFIG_PACKAGE_ipip=y
	CONFIG_PACKAGE_iputils-ping=y
	CONFIG_PACKAGE_openwisp-config=y
	CONFIG_PACKAGE_px5g=y
EOF

make defconfig
make  V=99 -j 1
