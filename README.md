# TODO
- нащупать Ubuntu на RS3

#### Железо
- [NanoPI R3S Rockchip](https://aliexpress.ru/item/1005007851507512.html?spm=a2g2w.orderdetail.0.0.6afa4aa6PwKj4t&sku_id=12000042539366705)
- CPU: Rockchip RK3566, Quad-core Cortex-A55
- RAM: 2GB LPDDR4X
- Ethernet: one Native Gigabit Ethernet, and one PCIe Gigabit Ethernet
- USB3.0 Host: Type-A x1
- Storage: MicroSD Slot x 1, and on-board 32GB eMMC
- Debug Serial Port: 3.3V TTL, 3-pin 2.54mm pitch connector, 1500000 bauds
- LED: LED x 3
- RTC: One low-power RTC, support backup battery input
- Buttons: 1x User BUtton, 1x MASK button for eMMC flashing via USB-C
- Display: 1x MIPI-DSI 30-Pin FPC connector
- PCB Size: 57*57*1.2mm
- Power supply: USB-C 5V/2A input
- Temperature measuring range: 0℃ to 80℃
- OS/Software: U-boot，Ubuntu-Core，Debian-Core，OpenMediaVault, OpenWrt

#### Заметки
OpenVPN на нашем чипе(из документации): `...NanoPi R4S is alleged to be capable of 220 Mbps...`. То есть, надо думать, 
решение не такое уж ущербное :D

В конфиге OpenVPN необходимо указывать `route-noexec`, иначе OpenVPN будет добавлять правило маршрутизации по умолчанию на свой интерфейс и весь трафик пойдет через него
 
#### [Документация](http://wiki.friendlyelec.com/wiki/index.php/NanoPi_R3S)

#### Подключение
`Ethernet` от роутера в `WAN`, `Ethernet` из `R3S-LAN` в комп

##### Веб-морда
- http://friendlywrt/
- http://192.168.2.1/
- http://[fd00:ab:cd::1]

##### SSH
Дефолтный пароль: password
```sh
ssh root@192.168.2.1
```

##### Запись загрузочной флэшки
###### UNetbootin
Установка
```sh
sudo add-apt-repository ppa:gezakovacs/ppa &&
sudo apt-get update &&
sudo apt-get install unetbootin
```
Запуск
```sh
sudo QT_X11_NO_MITSHM=1 /usr/bin/unetbootin
```

##### Tools
###### Soft Factory Reset
```shell
firstboot && reboot
```

#### Доп.материалы
- [Zapret-OpenWRT](https://github.com/remittor/zapret-openwrt), выглядит, как "готовое" решение anti-dpi
- Rooter, форк OpenWRT (не помню, зачем сохранял):
    - https://youtu.be/fY-TXzllVx8?si=amzeMDLtrU4mbtyB
- [Точечная маршрутизация по доменам](https://youtu.be/Otv-kMzGOSU?t=931)
- [Анализируем трафик и определяем домены](https://habr.com/ru/articles/834168/)
- [ruantiblock-openwrt](https://github.com/gSpotx2f/ruantiblock_openwrt), Tor/VPN решение для OpenWRT
- [Проверка доступности интернета](https://github.com/gSpotx2f/luci-app-internet-detector)