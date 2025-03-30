### Установка среды

#### Бинарник docker-compose
Пребилженный бинарник для ARMv8(aarch64)
```shell
curl -L "https://github.com/docker/compose/releases/download/v2.32.1/docker-compose-linux-aarch64" -o /usr/bin/docker-compose &&
chmod +x /usr/bin/docker-compose &&
docker-compose --version
```

#### Копирование конфига на коробку
```shell
sshpass -p "bluetom27" scp -r ./vpn/ root@192.168.2.1:~/
```

#### Перенос docker-compose.yml на RS3
На устройстве должна быть папка `~/vpn/openvpn` с OpenVPN конфигом `config.ovpn` 
```shell
sshpass -p "bluetom27" scp ./gluetun.compose.yml root@192.168.2.1:~/gluetun.compose.yml &&
sshpass -p "bluetom27" scp -r ./vpn root@192.168.2.1:~/
```

FIXME: порты gluetun торчат наружу, починить
#### Запуск `gluetun`
```shell
docker-compose -f "gluetun.compose.yml" up -d
```

#### Проверка того, что VPN контейнер работает штатно
Должна отобразиться информация про Франкфурт
```shell
docker run --rm --network=container:gluetun alpine:3.20 sh -c "apk add wget && wget -qO- https://ipinfo.io"
```

#### Красивое отображение `iptables` в таблице
```shell
opgk install python3 python3-pip &&
pip3 install tabulate
```
```shell
sshpass -p "bluetom27" scp ./pp-iptables.py root@192.168.2.1:~/pp-iptables.py
```
```shell
iptables -t nat -L | ./pp-iptables.py
```

#### Бэкап и восстановление
Все предыдущие шаги сохранены в бэкапе `backup-***.tar.gz`, загрузить его можно в веб-морде
