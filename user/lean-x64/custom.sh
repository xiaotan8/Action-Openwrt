#!/bin/bash

echo "Test custom.sh"
git clone  https://github.com/fw876/helloworld.git                              package/helloworld
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06            feeds/luci/themes/luci-theme-argon
rm -rf feeds/packages/libs/libcap
svn co https://github.com/openwrt/openwrt/trunk/package/libs/libcap             feeds/packages/libs/libcap
git clone https://github.com/pymumu/luci-app-smartdns.git -b lede               package/applications/luci-app-smartdns
git clone https://github.com/tty228/luci-app-serverchan.git                      package/applications/luci-app-serverchan
git clone https://github.com/destan19/OpenAppFilter.git                         package/OpenAppFilter
git clone https://github.com/xiaorouji/openwrt-passwall.git -b packages         package/passwall-packages
git clone https://github.com/xiaorouji/openwrt-passwall.git -b luci             package/passwall
rm -rf  package/passwall-packages/v2ray-core/patches/010-go-1.18.patch
