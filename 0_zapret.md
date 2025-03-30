#### Аnti-DPI решение для обхода блокировок РКН(Zapret)
[Гайд для OpenWRT](https://github.com/bol-van/zapret/blob/master/docs/quick_start.md)

Копипастим бинарники и скрипты на устройство
```shell
scp -r ./distributable/zapret-v69.9-openwrt-embedded/zapret-v69.9 root@g-vpn:/tmp/zapret
```

Разовая установка всей необходимой инфраструктуры
```shell
install_bin.sh
install_prereq.sh
```

Проверка `DoH`
```shell
./blochkeck.sh
```
Результаты проверки для `[хnxx.com, rutracker.org, discord.com]`@YOTA:
```shell
Summary:
ipv4 rutracker.org curl_test_http : tpws --split-pos=midsld --oob
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=12 --dpi-desync-split-pos=method+2
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=12 --dpi-desync-split-pos=method+2
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=12 --dpi-desync-split-pos=midsld --dpi-desync-fake-http=0x00000000
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 rutracker.org curl_test_https_tls12 : tpws not working
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=12 --dpi-desync-split-pos=1
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=12 --dpi-desync-split-pos=midsld
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=12 --dpi-desync-split-pos=1
ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 xnxx.com curl_test_http : tpws --split-pos=midsld --oob
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=12 --dpi-desync-split-pos=method+2
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=12 --dpi-desync-split-pos=method+2
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2
ipv4 xnxx.com curl_test_http : nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 xnxx.com curl_test_https_tls12 : tpws --split-pos=2 --oob --mss=88
ipv4 xnxx.com curl_test_https_tls12 : tpws --split-pos=2 --oob --disorder --mss=88
ipv4 xnxx.com curl_test_https_tls12 : tpws --tlsrec=midsld --mss=88
ipv4 xnxx.com curl_test_https_tls12 : tpws --tlsrec=midsld --oob --mss=88
ipv4 xnxx.com curl_test_https_tls12 : tpws --tlsrec=midsld --disorder --mss=88
ipv4 xnxx.com curl_test_https_tls12 : tpws --tlsrec=midsld --oob --disorder --mss=88
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 xnxx.com curl_test_https_tls12 : nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1
ipv4 discord.com curl_test_http : working without bypass
ipv4 discord.com curl_test_https_tls12 : tpws --split-pos=host+1 --oob
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=multisplit --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=12
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-fooling=badseq
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=5
ipv4 discord.com curl_test_https_tls12 : nfqws --dpi-desync=syndata --dpi-desync-fake-syndata=/opt/zapret/files/fake/tls_clienthello_iana_org.bin
ipv4 youtube.com curl_test_http : working without bypass
ipv4 youtube.com curl_test_https_tls12 : working without bypass
```
**Рабочий вариант**: `/opt/zapret/nfq/nfqws --debug --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=method+2 --qnum 0`

----
Перед перенаправлением всех запросов на 80,443, надо поменять веб-мордовский порт:
```shell
nano /etc/config/uhttpd
```
На альтернативные
```shell
option listen_http '0.0.0.0:8080'
option listen_https '0.0.0.0:8443'
```
----
Перенаправление трафика с `lan` в `NFQWS`
FIXME: отъёбывает LuCI, поменять port в веб-морде
FIXME: сбрасывается после `reboot`
```shell
iptables -t mangle -A PREROUTING -i br-lan -p tcp --dport 80 -j NFQUEUE --queue-num 0
iptables -t mangle -A PREROUTING -i br-lan -p tcp --dport 443 -j NFQUEUE --queue-num 0
```
----
Отключение фильтрации(если такая присутствует)
TODO: проверить, нужны ли
```shell
iptables -t filter -A INPUT -i br-lan -p tcp --dport 80 -j ACCEPT
iptables -t filter -A INPUT -i br-lan -p tcp --dport 443 -j ACCEPT
```
----
Проверка, идёт ли трафик из `lan` через `nfqws`:
TODO: есть ощущение, что без ручного запуска не стартует
```shell
/opt/zapret/nfq/nfqws --debug --qnum 0
```
----
*TODO*: после установки проверить, что кастомные скрипты ОК(/opt/zapret/init.d/openwrt/custom.d)

*TODO*: попробовать https://github.com/remittor/zapret-openwrt