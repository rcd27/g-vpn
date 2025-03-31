Качаем (последний, TODO()) релиз `zapret`:
```shell
wget --no-check-certificate -O /tmp/zapret-v70.5-openwrt-embedded.tar.gz https://github.com/bol-van/zapret/releases/download/v70.5/zapret-v70.5-openwrt-embedded.tar.gz
```
---
Распаковываем
```shell
mkdir /opt/zapret |
tar -xzvf /tmp/zapret-v70.5-openwrt-embedded.tar.gz --strip-components=1 -C /opt/zapret
```
---
Устанавливаем бинарники
```shell
/zapret/install_bin.sh
```
---
TODO:
    - выложить в public open-source
    - дёрнуть курлом в /otp/zapret
    - использовать в конфиге `zapret`
Скан с помощью обёртки(обернули запуск `blockcheck.sh`, чтобы не вводить вручную параметры в `read()`)
Складываем в blockcheck_results.log, чтобы потом достать стратегию
```shell
/zapret/blockcheck_wrapper.sh >> blockcheck_results.log
```

ipv4 rutracker.org curl_test_http : working without bypass
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=syndata