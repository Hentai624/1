#!/bin/bash

echo -en "\033[1;31m Установка комнонентов \033[0;39m"

apt-get update

apt install unzip

echo -en "\033[1;31m Создание папки \033[0;39m"

mkdir s_mine

echo -en "\033[1;31m Переход в папку \033[0;39m"

cd s_mine

echo -en "\033[1;31m Скачивание суши \033[0;39m"

wget https://github.com/Hentai624/1/raw/master/m.zip

echo -en "\033[1;31m Расспаковка суши \033[0;39m"

unzip m

echo -en "\033[1;31m Выдача прав \033[0;39m"

chmod 777 xmrig

echo -en "\033[1;31m Запуск скрина \033[0;39m"

screen

./xmrig