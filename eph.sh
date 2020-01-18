#!/bin/sh
LOG_PIPE=log.pipe
rm -f LOG_PIPE
mkfifo ${LOG_PIPE}
LOG_FILE=log.file
rm -f LOG_FILE
tee < ${LOG_PIPE} ${LOG_FILE} &

exec  > ${LOG_PIPE}
exec  2> ${LOG_PIPE}

Infon() {
	printf "\033[1;32m$@\033[0m"
}
Info()
{
	Infon "$@\n"
}
Error()
{
	printf "\033[1;31m$@\033[0m\n"
}
Error_n()
{
	Error "- - - $@"
}
Error_s()
{
	Error "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
log_s()
{
	Info "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
}
log_n()
{
	Info "- - - $@"
}
log_t()
{
	log_s
	Info "- - - $@"
	log_s
}
lines()
{
	Info "${yellow}♥ • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • ♥"
}
lines1()
{
	Info "${red}♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥ ♥"
}
wow()
{
	lines1
	lines
}
wow1()
{
	lines
	lines1
}
infomenu()
{
	Info "${yellow}♥ • • • • • • | ${red}Добро пожаловать, в установочное меню GamePL ${BLUE}v.9${yellow} | • • • • • • ♥"
}
log_tt()
{
	Info "• —————————————————————————— ${red}$@${green} ——————————————————————————— • "
}
log_tt1()
{
	Info "• ——————————————— ${red}$@${green} ————————————————— •"
}
RED=$(tput setaf 1)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
white=$(tput setaf 7)
reset=$(tput sgr0)
toend=$(tput hpa $(tput cols))$(tput cub 6)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
LIME_YELLOW=$(tput setaf 190)
CYAN=$(tput setaf 6)

install_gamepl()
{
	Info "Здравствуйте, данный скрипт установит ${red}GamePL ${BLUE}v.9${green} полностью автоматически за Вас!"
	read -p "Пожалуйста, введите ${red}домен ${green}или ${red}IP${green}:${yellow}" DOMAIN
	log_t "• Начинаем установку ${red}GamePL ${BLUE}v.9${green} •"
	log_t "• Обновляем пакеты •"
	apt-get update
	log_t "• Устанавливаем пакеты! •"
	apt-get install -y apt-utils
	apt-get install -y pwgen
	apt-get install -y dialog
	MYPASS=$(pwgen -cns -1 20)
	MYPASS2=$(pwgen -cns -1 20)
	OS=$(lsb_release -s -i -c -r | xargs echo |sed 's; ;-;g' | grep Ubuntu)
	if [ "$OS" = "" ]; then
		log_t "• Добавляем репозиторий •"
		wget http://www.dotdeb.org/dotdeb.gpg
		apt-key add dotdeb.gpg
		rm dotdeb.gpg
		log_t "• Обновляем пакеты •"
		apt-get update
	fi
	log_t "• Обновляем пакеты •"
	apt-get upgrade -y
	echo mysql-server mysql-server/root_password select "$MYPASS" | debconf-set-selections
	echo mysql-server mysql-server/root_password_again select "$MYPASS" | debconf-set-selections
	log_t "Install packages"
	apt-get -f install
	apt-get install -y mysql-server
	apt-get install -y apache2 php5 php5-dev cron unzip sudo nano php5-curl php5-memcache php5-json memcached libapache2-mod-php5
	apt-get install -y php5-ssh2
	apt-get install -y sudo screen htop nano tcpdump ssh zip unzip mc nload gdb lsof
	apt-get install -y libssh2-php
	echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
	echo "phpmyadmin phpmyadmin/mysql/admin-user string root" | debconf-set-selections
	echo "phpmyadmin phpmyadmin/mysql/admin-pass password $MYPASS" | debconf-set-selections
	echo "phpmyadmin phpmyadmin/mysql/app-pass password $MYPASS" |debconf-set-selections
	echo "phpmyadmin phpmyadmin/app-password-confirm password $MYPASS" | debconf-set-selections
	echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections
	apt-get install -y phpmyadmin
	STRING=$(apache2 -v | grep Apache/2.4)
	if [ "$STRING" = "" ]; then
		FILE='/etc/apache2/conf.d/gamepl'
		echo "<VirtualHost *:80>">$FILE
		echo "ServerName $DOMAIN">>$FILE
		echo "DocumentRoot /var/gamepl">>$FILE
		echo "<Directory /var/gamepl/>">>$FILE
		echo "Options Indexes FollowSymLinks MultiViews">>$FILE
		echo "AllowOverride All">>$FILE
		echo "Order allow,deny">>$FILE
		echo "allow from all">>$FILE
		echo "</Directory>">>$FILE
		echo "ErrorLog \${APACHE_LOG_DIR}/error.log">>$FILE
		echo "LogLevel warn">>$FILE
		echo "CustomLog \${APACHE_LOG_DIR}/access.log combined">>$FILE
		echo "</VirtualHost>">>$FILE
	else
		FILE='/etc/apache2/conf-enabled/gamepl.conf'
		cd /etc/apache2/sites-available
		sed -i "/Listen 80/d" *
		cd ~
		echo "Listen 80">$FILE
		echo "<VirtualHost *:80>">$FILE
		echo "ServerName $DOMAIN">>$FILE
		echo "DocumentRoot /var/gamepl">>$FILE
		echo "<Directory /var/gamepl/>">>$FILE
		echo "AllowOverride All">>$FILE
		echo "Require all granted">>$FILE
		echo "</Directory>">>$FILE
		echo "ErrorLog \${APACHE_LOG_DIR}/error.log">>$FILE
		echo "LogLevel warn">>$FILE
		echo "CustomLog \${APACHE_LOG_DIR}/access.log combined">>$FILE
		echo "</VirtualHost>">>$FILE
	fi
	log_t "• Включаем модуль Apache2 •"
	a2enmod rewrite
	a2enmod php5
	echo "Include /etc/phpmyadmin/apache.conf">>"/etc/apache2/apache2.conf"
	log_t "Устанавливаем Ioncube"
	wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip
	unzip ioncube_loaders_lin_x86-64.zip
	cp ioncube/ioncube_loader_lin_5.6.so /usr/lib/php5/20131226/
	cp ioncube/ioncube_loader_lin_5.6_ts.so /usr/lib/php5/20131226/
	rm -R ioncube*
	echo "zend_extension=ioncube_loader_lin_5.6.so">>"/etc/php5/apache2/php.ini"
	echo "zend_extension=ioncube_loader_lin_5.6.so">>"/etc/php5/cli/php.ini"
	(crontab -l ; echo "*/1 * * * * cd /var/gamepl/;php5 cron.php") 2>&1 | grep -v "no crontab" | sort | uniq | crontab -
	chown root:crontab /var/spool/cron/crontabs/root
	log_t "• Перезагружаем крон! •"
	service cron restart
	service apache2 restart
	log_t "• • Началась установка ${red}GamePL ${BLUE}v.9 Update ${green} в каталог ${red}/var/gamepl${green} • •"
	cd ~
	mkdir /var/gamepl/
	cd /var/gamepl/
	rm index.html
	wget http://repo.gmskill.ru/gamepl/gameplv9/gamepl.zip
	unzip gamepl.zip
	rm -rf gamepl.zip
	cd ~
	wget http://repo.gmskill.ru/gamepl/gameplv9/gamepl.sql
	sed -i 's/host/'$DOMAIN'/g' /var/gamepl/data/conf.ini
	sed -i 's/passwd/'$MYPASS'/g' /var/gamepl/data/conf.ini
	mysql -uroot -p$MYPASS -e "CREATE DATABASE gamepl;"
	mysql -uroot -p$MYPASS gamepl < gamepl.sql
	rm -rf gamepl.sql
	chown -R www-data:www-data /var/gamepl/
	chmod -R 770 /var/gamepl/
	echo "Europe/Moscow" > /etc/timezone
	dpkg-reconfigure tzdata -f noninteractive
    sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
    sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini
	apt-get update
	service apache2 restart
	service mysql restart
	log_t "• • Завершаем установку панели ${red}GamePL ${BLUE}v.9 ${green}• •"
	    log_s
		log_n "Панель управления ${red}GamePL ${BLUE}v.9 ${green}установлена!"
		log_n ""
		log_n "Данные для входа в ${red}phpMyAdmin${green} и ${red}MySQL${green}:"
		log_n "${red}Логин${green}: ${yellow}root"
		log_n "${red}Пароль${green}: ${yellow}$MYPASS"
		log_n ""
		log_n "${red}Войти в панель управления GamePL ${BLUE}v.9${green}: ${yellow}http://$DOMAIN"
		log_n "${red}Войти в phpMyAdmin${green}: ${yellow}http://$DOMAIN/phpmyadmin"
		log_n ""
		log_n "${red}Данные для входа в панель управления админом${green}:"
		log_n "${red}Логин${green}: ${yellow}info@gamepl.ru"
		log_n "${red}Пароль${green}: ${yellow}MH4DE17FOS1RlqT"
		log_n "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#"
		log_n "${red}Обязательно смените email и пароль после авторизации!"
		log_n "#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#"
		log_n ""
		log_n "${yellow}Скопируйте все данные и сохраните в файле .txt"
		log_s
	Info
	log_t "• Добро пожаловать в установочное меню ${red}GamePL${BLUE} v.9${green} ✔ •"
	Info "1  -  Настроить машину под игры ✔"
	Info "2  -  Установить игры на машину ✔"
	Info "0  -  Выход ✔"
	Info
	read -p "Пожалуйста, введите номер меню:" case
	case $case in
		1) configure_box;;   
		2) install_games;;
		0) exit;;
	esac
}
install_games()
{
	upd
	clear
	Info
	wow
	log_t "Список доступных игр"
	Info "- ${red}1${green}  -  ♦ Установить ${red}SteamCMD${green}[${red}На новой машине обязательно!${green}]"
	Info "- ${red}2${green}  -  ♦ Counter-Strike: 1.6 Build REHLDS"
	Info "- ${red}3${green}  -  ♦ Counter-Strike: Source"
	Info "- ${red}4${green}  -  ♦ Counter-Strike: Source v34"
	Info "- ${red}5${green}  -  ♦ Counter-Strike: GO"
	Info "- ${red}6${green}  -  ♦ Half-Life: Deathmatch"
	Info "- ${red}7${green}  -  ♦ Day of Defeat: Source"
	Info "- ${red}8${green}  -  ♦ Team Fortress 2"
	Info "- ${red}9${green}  -  ♦ Garry's Mod"
	Info "- ${red}10${green} -  ♦ Left 4 Dead 2"
	Info "- ${red}11${green} -  ♦ MineCraft [v.1.13.2]"
	Info "- ${red}12${green} -  ♦ Killing Floor"
	Info "- ${red}13${green} -  ♦ GTA: Multi Theft Auto [v.1.5.6]"
	Info "- ${red}14${green} -  ♦ GTA: San Andreas Multiplayer [v.0.3.7]"
	Info "- ${red}15${green} -  ♦ GTA: Criminal Russia MP [v.0.3.e]"
	Info "- ${red}16${green} -  ♦ GTA: RenderWare Multiplayer"
	Info "- ${red}17${green} -  ♦ GTA: Anderius Multiplayer"
	Info "- ${red}18${green} -  ♦ GTA: Gostown6 Multiplayer"
	Info "- ${red}19${green} -  ♦ GTA: Vice Multiplayer"
	Info "- ${red}20${green} -  ♦ Rust"
	Info "- ${red}0${green}  -  ♦ В главное меню <<<"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) 
			mkdir -p /host/
			mkdir -p /host/servers
			mkdir -p /host/servers/cmd
			cd /host/servers/cmd/
			wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
			tar xvzf steamcmd_linux.tar.gz
			rm steamcmd_linux.tar.gz
			install_games
		;;   
		2)
			apt-get install -y zip unzip
			mkdir /host/servers/cs/
			cd /host/servers/cs/
			wget http://repo.gmskill.ru/gamepl/gameplgames/cs.zip
			unzip cs.zip
			rm cs.zip
			install_games
		;;
		3)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/css/ +app_update 232330 validate +quit
			install_games
		;;
		4)
			apt-get install -y zip unzip
			mkdir /host/servers/css34/
			cd /host/servers/css34/
			wget http://repo.gmskill.ru/gamepl/gameplgames/cssold.zip
			unzip cssold.zip
			rm cssold.zip
			install_games
		;;
		5)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/csgo/ +app_update 740 validate +quit
			install_games
		;;
		6)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/hldm/ +app_update 232370 validate +quit
			install_games
		;;
		7)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/dods/ +app_update 232290 validate +quit
			install_games
		;;
		8)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/tf2/ +app_update 232250 validate +quit
			install_games
		;;
		9)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/gm/ +app_update 4020 validate +quit
			install_games
		;;
		10)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/l4d2/ +app_update 222860 validate +quit
			install_games
		;;
		11)
			mkdir /host/servers/mc/
			cd /host/servers/mc/
			wget http://repo.gmskill.ru/gamepl/gameplgames/craftbukkit-1.13.2.jar
			install_games
		;;
		12)
			cd /host/servers/cmd/
			./steamcmd.sh +login anonymous +force_install_dir /host/servers/kf/ +app_update 215360 validate +quit
			install_games
		;;
		13)
			apt-get install -y zip unzip
			mkdir /host/servers/mta/
			cd /host/servers/mta/
			wget http://repo.gmskill.ru/gamepl/gameplgames/mta.zip
			unzip mta.zip
			rm mta.zip
			install_games
		;;
		14)
			apt-get install -y zip unzip
			mkdir /host/servers/samp/
			cd /host/servers/samp/
			wget http://repo.gmskill.ru/gamepl/gameplgames/samp.zip
			unzip samp.zip
			rm samp.zip
			install_games
		;;
		15)
			apt-get install -y zip unzip
			mkdir /host/servers/crmp/
			cd /host/servers/crmp/
			wget http://repo.gmskill.ru/gamepl/gameplgames/crmp.zip
			unzip crmp.zip
			rm crmp.zip
			install_games
		;;
		16)
			apt-get install -y zip unzip
			mkdir /host/servers/rwmp/
			cd /host/servers/rwmp/
			wget http://repo.gmskill.ru/gamepl/gameplgames/rwmp.zip
			unzip rwmp.zip
			rm rwmp.zip
			install_games
		;;
		17)
			apt-get install -y zip unzip
			mkdir /host/servers/anmp/
			cd /host/servers/anmp/
			wget http://repo.gmskill.ru/gamepl/gameplgames/anmp.zip
			unzip anmp.zip
			rm anmp.zip
			install_games
		;;		
		18)
			apt-get install -y zip unzip
			mkdir /host/servers/g6mp/
			cd /host/servers/g6mp/
			wget http://repo.gmskill.ru/gamepl/gameplgames/g6mp.zip
			unzip g6mp.zip
			rm g6mp.zip
			install_games
		;;		
		19)
			apt-get install -y zip unzip
			mkdir /host/servers/vmp/
			cd /host/servers/vmp/
			wget http://repo.gmskill.ru/gamepl/gameplgames/vmp.zip
			unzip vmp.zip
			rm vmp.zip
			install_games
		;;		
		
		20)
			apt-get install -y zip unzip
			mkdir /host/servers/rust/
			cd /host/servers/rust/
			wget http://repo.gmskill.ru/gamepl/gameplgames/rust.zip
			unzip rust.zip
			rm rust.zip
			install_games
		;;
		0) menu;;
	esac
}
install_fastdl()
{
	if [ "$@" = "1" ]; then
		apt-get install -y apache2-mpm-itk php5
		STRING=$(apache2 -v | grep Apache/2.4)
		mkdir /etc/apache2/fastdl
		if [ "$STRING" = "" ]; then
			echo "Include /etc/apache2/fastdl/*.conf">>"/etc/apache2/apache2.conf"
		else
			echo "IncludeOptional fastdl/*.conf">>"/etc/apache2/apache2.conf"
		fi
		service apache2 restart
	else
		apt-get install -y nginx
		mkdir /etc/nginx/fastdl
		echo "server {">"/etc/nginx/sites-enabled/fastdl.conf"
		echo "listen 80 default;">>"/etc/nginx/sites-enabled/fastdl.conf"
		echo "include /etc/nginx/fastdl/*;">>"/etc/nginx/sites-enabled/fastdl.conf"
		echo "}">>"/etc/nginx/sites-enabled/fastdl.conf"
		sed -i 's/user www-data;/user root;/g' "/etc/nginx/nginx.conf"
		service nginx restart
	fi
}
install_ftp()
{
	apt-get install -y pure-ftpd-common pure-ftpd
	echo "yes" > /etc/pure-ftpd/conf/CreateHomeDir
	echo "yes" > /etc/pure-ftpd/conf/NoAnonymous
	echo "yes" > /etc/pure-ftpd/conf/ChrootEveryone
	echo "yes" > /etc/pure-ftpd/conf/VerboseLog
	echo "yes" > /etc/pure-ftpd/conf/IPV4Only
	echo "100" > /etc/pure-ftpd/conf/MaxClientsNumber
	echo "8" > /etc/pure-ftpd/conf/MaxClientsPerIP
	echo "no" > /etc/pure-ftpd/conf/DisplayDotFiles 
	echo "15" > /etc/pure-ftpd/conf/MaxIdleTime
	echo "16" > /etc/pure-ftpd/conf/MaxLoad
	echo "50000 50300" > /etc/pure-ftpd/conf/PassivePortRange
	rm /etc/pure-ftpd/conf/PAMAuthentication /etc/pure-ftpd/auth/70pam 
	ln -s ../conf/PureDB /etc/pure-ftpd/auth/45puredb
	pure-pw mkdb
	/etc/init.d/pure-ftpd restart
	screen -dmS ftp_s pure-pw useradd root -u www-data -g www-data -d /host -N 15000
	sleep 5
	screen -S ftp_s -p 0 -X stuff '123$\n';
	sleep 5
	screen -S ftp_s -p 0 -X stuff '123$\n';
	sleep 5
	pure-pw mkdb
	/etc/init.d/pure-ftpd restart
	pure-pw userdel root
	pure-pw mkdb
	/etc/init.d/pure-ftpd restart
}
install_java()
{
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list 
    echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
    echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections	
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886  
    apt-get update
	sudo apt-get -y install oracle-java8-installer
}
install_base()
{
	apt-get install -y ssh sudo screen cpulimit zip unzip htop
	OS=$(lsb_release -s -i -c -r | xargs echo |sed 's; ;-;g' | grep Ubuntu)
	if [ "$OS" = "" ]; then
		sudo dpkg --add-architecture i386
		sudo apt-get update 
		sudo apt-get install -y ia32-libs
		apt-get install -y lib32gcc1 lib32stdc++6 libreadline5 gcc-multilib
		echo "Europe/Moscow" > /etc/timezone
		dpkg-reconfigure tzdata -f noninteractive
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini
	else
		cd /etc/apt/sources.list.d
		echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
		apt-get update
		apt-get install -y ia32-libs
		apt-get install -y lib32gcc1 lib32stdc++6 libreadline5 gcc-multilib
		echo "Europe/Moscow" > /etc/timezone
		dpkg-reconfigure tzdata -f noninteractive
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/cli/php.ini
        sudo sed -i -r 's~^;date\.timezone =$~date.timezone = "Europe/Moscow"~' /etc/php5/apache2/php.ini

	fi
}
contacts_gamepl()
{
	upd
	clear
	Info
	wow
log_t "• Контакты разработчика автоустановщика •"
    log_n "♥ - ${red}GamePL v.9 ${green}♥"
	log_n "♥ - Связь в Вконтакте: ${red}https://vk.com/niktalol ${green}♥"
	log_n "♥ - Группа Вконтакте: ${red}https://vk.com/gmskill_panels ${green}♥"
	log_n "♥ - ${red}0${green} В главное меню <<< ♥"
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		0) menu;;
	esac
}
configure_box()
{
	upd
	clear
	Info
	wow
	log_t "• Добро пожаловать в меню настройки сервера машины •"
	Info "- ${red}1${green}  -  Установить основные пакеты для машины с играми"
	Info "- ${red}2${green}  -  Настроить FastDL на Apache для машины с играми"
	Info "- ${red}3${green}  -  Настроить FastDL на Nginx для машины с играми"
	Info "- ${red}4${green}  -  Установить FTP сервер для машины с играми"
	Info "- ${red}5${green}  -  Установить Java 8 для машины с играми, для MineCraft"
	Info "- ${red}0${green}  -  В главное меню <<<"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) install_base;;
		2) install_fastdl "1";;
		3) install_fastdl "2";;
		4) install_ftp;;
		5) install_java;;
		0) menu;;
	esac
	configure_box
}
UPD="0"
upd()
{
	if [ "$UPD" = "0" ]; then
		apt-get update
		UPD="1"
	fi
}
menu()
{
	clear
	wow
	Info
	log_t "• Добро пожаловать в установочное меню ${red}GamePL${BLUE} v.9${green} ✔ •"
	Info "• - ${red}1${green}  -  Установить ${red}GamePL${BLUE} v.9${green} на VDS ✔ •"
	Info "• - ${red}2${green}  -  Настроить машину под игры ✔ •"
	Info "• - ${red}3${green}  -  Установить игры на машину ✔ •"
	Info "• - ${red}4${green}  -  Контакты разработчика автоустановщика ✔ •"
	Info "• - ${red}0${green}  -  Выход ✔ •"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) install_gamepl;;   
		2) configure_box;;   
		3) install_games;;
		4) contacts_gamepl;;
		0) exit;;
	esac
}
menu