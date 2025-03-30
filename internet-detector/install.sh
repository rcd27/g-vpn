#!/bin/sh

# Установка
wget --no-check-certificate -O /tmp/internet-detector_1.4.4-r1_all.ipk https://github
.com/gSpotx2f/packages-openwrt/raw/master/current/internet-detector_1.4.4-r1_all.ipk |
opkg install /tmp/internet-detector_1.4.4-r1_all.ipk |
rm /tmp/internet-detector_1.4.4-r1_all.ipk |
service internet-detector start |
service internet-detector enable|
wget --no-check-certificate -O /tmp/luci-app-internet-detector_1.4.4-r1_all.ipk https://github
.com/gSpotx2f/packages-openwrt/raw/master/current/luci-app-internet-detector_1.4.4-r1_all.ipk |
opkg install /tmp/luci-app-internet-detector_1.4.4-r1_all.ipk |
rm /tmp/luci-app-internet-detector_1.4.4-r1_all.ipk |
service rpcd restart

# Ранее сохранённый конфиг internet-detector-backup.uci положить в корень

# Выставляем sys-led в красный, когда нет доступа в интернет
uci import internet-detector < internet-detector-backup.uci
uci commit internet-detector
/etc/init.d/internet-detector restart