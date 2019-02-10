if [ `getconf LONG_BIT` -ne "32" ]; 
then
      installpack="apache2 php5 mysql-server  php5-dev php5-mysql php-pear wget unzip phpmyadmin mysql-client mysql-workbench"
else
     installpack="apache2 php5 mysql-server  php5-dev php5-mysql php-pear wget unzip phpmyadmin mysql-client mysql-workbench"
fi 
#!установщик сделал ru-skript.ru 
LOG_PIPE=log.pipe
rm -f LOG_PIPE
mkfifo ${LOG_PIPE}
LOG_FILE=log.file
rm -f LOG_FILE
wget  http://ru-skript.ru/faster/up9.txt -O up9.txt
rm up.txt
rm up1.txt
rm up2.txt
rm up3.txt
rm up4.txt
rm up5.txt
rm up6.txt
rm up7.txt
rm up8.txt
		 
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
		 
install_mongo()
{
	upd
	clear
	Info
	log_t "Список скриптов mongo"
	Info "- 1  -  Установить Skininside"
    Info "- 2  -  Установить Csgopoint"
	Info "- 3  -  Установить LiteRulet"
	Info "- 4  -  Установить CSGOSTAR"
	Info "- 5  -  Установить PoleCS"
	Info "- 6  -  Установить LETS"
	Info "- 7  -  Установить Cslotto"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
		1) 
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/skininside.zip
			unzip skininside.zip -d /var/www/html
		rm skininside.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
2)
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/csgoshort.zip
			unzip csgoshort.zip -d /var/www/html
		rm csgoshort.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
3)
				apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/literulet.zip
			unzip literulet.zip -d /var/www/html
		rm literulet.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
4)
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/csstar.zip
			unzip csstar.zip -d /var/www/html
			wget http://ru-skript.ru/faster/botstar.zip
			unzip botstar.zip -d /botstar/
			wget http://ru-skript.ru/faster/shopstar.zip
			unzip shopstar.zip -d /shopstar/
		rm csstar.zip
		rm botstar.zip
		rm shopstar.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
5)
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/pole.zip
			unzip pole.zip -d /var/www/html
		rm pole.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
6) 
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install -y sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/lets.zip
			unzip lets.zip -d /var/www/html
		rm lets.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 
		
7) 
			apt-get update
			dpkg --add-architecture i386


apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install -y sudo
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update 
apt-get install mongodb --allow-unauthenticated -y -q
sudo apt-get install -y mongodb-org 
sudo touch /etc/init.d/mongodb
sudo chmod 755 /etc/init.d/mongodb
apt-get install apache2 --allow-unauthenticated -y -q
apt-get install build-essential --allow-unauthenticated -y -q
npm install forever
npm install -g forever
sudo pecl install mongo
apt-get install build-essential --allow-unauthenticated -y -q
			export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
			rm /var/www/index.html
			wget http://ru-skript.ru/faster/cslot.zip
			unzip cslot.zip -d /var/www/html
		rm cslot.zip
		a2enmod rewrite
		service apache2 restart
		wget http://ru-skript.ru/faster/fixp.zip
			unzip fixp.zip -d /etc/apache2/sites-available/
			service apache2 restart
			rm fixp.zip
			menu
		;; 


		0) menu;;
	esac
	
	}
install_lava()
{
	upd
	clear
	Info
	log_t "Список скриптов laravel"
	Info "- 1  -  Установить Cshot"
	Info "- 2  -  Установить Puwok v5"
	Info "- 3  -  Установить Csjungles"
	Info "- 4  -  Установить Pubglottery"	
	Info "- 5  -  Установить Csgofast"
	Info "- 6  -  Установить Showlucky"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in	
	1) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/csgohotdb.zip
			unzip -o csgohotdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/csgo.sql
rm csgohotdb.zip
rm csgo.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/csgohot.zip
			unzip -o csgohot.zip -d  /var/www/html/
			rm csgohot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 	
2) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/puwdb.zip
			unzip -o puwdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/puw.sql
rm puwdb.zip
rm puw.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/puw.zip
			unzip -o puw.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/puwbot.zip
			unzip -o puwbot.zip -d  /rubot/
			wget http://ru-skript.ru/faster/fastpuwbot.zip
			unzip -o fastpuwbot.zip -d  /fastrubot/
			rm puw.zip
			rm puwbot.zip
			rm fastpuwbot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 	
3) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/jung.zip
			unzip -o jung.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/csgow.sql
rm jung.zip
rm csgo.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/jungle.zip
			unzip -o jungle.zip -d  /var/www/html/
			rm jungle.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
;; 

4) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/pubsql.zip
			unzip -o pubsql.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/pub.sql
rm pubsql.zip
rm pub.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/publ.zip
			unzip -o publ.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/publbot.zip 
			unzip -o publbot.zip -d  /botpub/
			rm publ.zip 
			rm publbot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
Бот находится в папке /botpub/
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;;
5) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/csgofastdb.zip
			unzip -o csgofastdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/csgofast.sql
rm csgofastdb.zip
rm csgofast.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/csfaster.zip
			unzip -o csfaster.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/botfast.zip
			unzip -o botfast.zip -d  /botfast/
			rm csfaster.zip
			rm botfast.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 	
	6) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/showlu.zip
			unzip -o showlu.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/showlu.sql
rm showlu.zip
rm showlu.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/showl.zip
			unzip -o showl.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/botshow.zip
			unzip botshow.zip -d /botshow/
			rm botshow.zip
			rm showl.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 		
		0) menu;;
	esac	

}
install_script()
{
	upd
	clear
	Info
	log_t "Список Скриптов Рулеток"

	Info "- 1  -  Скрипты mongo"
	Info "- 2  -  Скрипты laravel"

	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
			 
		1)install_mongo;; 
2)install_lava;; 
0) menu;;
		esac

}
install_update()
{
	wget http://ru-skript.ru/faster/fa.zip
		 unzip -o fa.zip 
		 rm fa.zip
		 sh fa.sh 
}
install_drug()
{
	upd
	clear
	Info
	log_t "Список других скриптов "
	Info "- 1  -  Установить Jetcash"
	Info "- 2  -  Установить Cosmocard"
	Info "- 3  -  Установить Ranbox"
	Info "- 4  -  Установить Opencase"
	Info "- 5  -  Установить Pubgcase"
	Info "- 6  -  Установить Funcash"
	Info "- 7  -  Установить Opmoney"
	Info "- 8  -  Установить Cheapkeys"
	Info "- 9  -  Установить Nvuti"
	Info "- 10  -  Установить Skycard"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in	
	1) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/jetdb.zip
			unzip -o jetdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/jet.sql
rm jetdb.zip
rm jet.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/jet.zip
			unzip -o jet.zip -d  /var/www/html/
			rm jet.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 
2) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/cosdb.zip
			unzip -o cosdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/cosdb.sql
rm cosdb.zip
rm jet.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/cossite.zip
			unzip -o cossite.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/botcos.zip
			unzip -o botcos.zip -d  /var/www/html/
			rm cossite.zip
			rm botcos.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 
		3) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/ranbd.zip
			unzip -o ranbd.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/ranbd.sql
rm ranbd.zip
rm ranbd.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/ranbox.zip
			unzip -o ranbox.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/ranbot.zip
			unzip -o ranbot.zip -d  /var/www/html/
			rm ranbox.zip
			rm ranbot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 
		4) 
		apt-get update
			apt-get install sudo
			curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | sudo bash
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y php5-phalcon
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
apt-get remove php-apc php5-apc
			apt-get install -y php-apc
sudo apt-get install unzip
wget http://ru-skript.ru/faster/opencase.zip
			unzip -o opencase.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database csgo" | mysql -uroot -p$rootmysqlpass
mysql csgo -uroot -p$rootmysqlpass < /root/opencase.sql
sudo service apache2 restart
cd /var/www/html/ 
rm index.html
wget http://ru-skript.ru/faster/csgositer.zip
			unzip -o csgositer.zip -d  /var/www/html/
rm csgositer.zip		
rm opencase.zip
rm opencase.sql	
sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			
			chmod -R 777 /var/www/html/cache/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

ROOTMYSQL=$rootmysqlpass

sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/app/config/config.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/app/config/config.php
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: csgo\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 
5) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/pubgcase.zip
			unzip -o pubgcase.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/pubgcase.sql
rm pubgcase.zip
rm pubgcase.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/pubgslib.zip
			unzip -o pubgslib.zip -d  /var/www/html/
			rm pubgslib.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 
		6) 
		apt-get update
			apt-get install sudo
			curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | sudo bash
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y php5-phalcon
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
apt-get remove php-apc php5-apc
			apt-get install -y php-apc
sudo apt-get install unzip
wget http://ru-skript.ru/faster/fundb.zip
			unzip -o fundb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/fundb.sql
sudo service apache2 restart
cd /var/www/html/ 
rm index.html
wget http://ru-skript.ru/faster/funcash.zip
			unzip -o funcash.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/funbot.zip
			unzip -o funbot.zip -d  /funbot/
rm funcash.zip		
rm fundb.zip
rm fundb.sql
rm funbot.zip	
sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

ROOTMYSQL=$rootmysqlpass

sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/app/config/config.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/app/config/config.php
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;;
7) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/opmoneydb.zip
			unzip -o opmoneydb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/opmoneydb.sql
rm opmoneydb.zip
rm opmoneydb.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/opmoney.zip
			unzip -o opmoney.zip -d  /var/www/html/
			wget http://ru-skript.ru/faster/opmoneybot.zip
			unzip -o opmoneybot -d  /opbot/
			rm opmoney.zip
			rm opmoneybot.zip
			cd /opbot/
			npm install express
            npm install http 
            npm install socket.io
            npm install requestify
			cd
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;;	
8) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/chipdb.zip
			unzip -o chipdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/chipdb.sql
rm chipdb.zip
rm chipdb.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/chip.zip
			unzip -o chip.zip -d  /var/www/html/
			rm chip.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/url/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 	
9) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/nvdb.zip
			unzip -o nvdb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/nvdb.sql
rm nvdb.zip
rm nvdb.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/nvutinew.zip
			unzip -o nvutinew.zip -d  /var/www/html/
			rm nvutinew.zip
			wget http://ru-skript.ru/faster/botnv.zip
			unzip -o botnv.zip -d  /botnvuti/
			rm botnv.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 		
		
		10) 
			apt-get update
			apt-get install sudo
			sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y php5
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php5
sudo apt-get install -y php5-mysql
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-gd
sudo apt-get install -y php5-mcrypt
export DEBIAN_FRONTEND=noninteractive;apt-get --allow-unauthenticated -y -q install $installpack
wget http://ru-skript.ru/faster/skydb.zip
			unzip -o skydb.zip
			ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
			dlinapass=10
rootmysqlpass=`base64 -w $dlinapass /dev/urandom | head -n 1`
mysqladmin -uroot password $rootmysqlpass
echo "create database site" | mysql -uroot -p$rootmysqlpass
mysql site -uroot -p$rootmysqlpass < /root/skydb.sql
rm skydb.zip
rm skydb.sql
sudo apt-get install -y git-core
service apache2 restart
sudo a2enmod rewrite
service apache2 restart
url -sS https://getcomposer.org/installer | php
apt-get install curl
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
apt-get install unzip
sudo apt-get update
cd 
sudo apt-get install -y build-essential 
sudo apt-get install -y tcl8.5 
wget http://download.redis.io/releases/redis-stable.tar.gz 
tar xzf redis-stable.tar.gz 
cd redis-stable 
make 
service apache2 restart 
make test 
sudo make install 
cd utils 
sudo ./install_server.sh
cd
apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt
cd
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -y install nodejs
wget http://ru-skript.ru/faster/apach.zip
			unzip -o apach.zip -d  /etc/apache2/sites-available/
			rm apach.zip
			service apache2 restart
			sudo a2enmod rewrite
			wget http://ru-skript.ru/faster/apache2.zip
			unzip -o apache2.zip -d  /etc/apache2/
			sudo /etc/init.d/apache2 restart
			rm apache2.zip
			wget http://ru-skript.ru/faster/Skycarder.zip
			unzip -o Skycarder.zip -d  /var/www/html/
			rm Skycarder.zip
			wget http://ru-skript.ru/faster/skycardbot.zip
			unzip -o skycardbot.zip -d  /skycardbot/
			rm skycardbot.zip
			cd /var/www/html/ 
			rm index.html
			cd
			chmod -R 777 /var/www/html/
			echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			echo " " | mysql -uroot -p$rootmysqlpass

sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
sed -i 's/userz/root/g' /var/www/html/config/database.php
sed -i 's/datez/site/g' /var/www/html/config/database.php
sed -i 's/userz/root/g' /var/www/html/.env
sed -i 's/datez/site/g' /var/www/html/.env
ROOTMYSQL=$rootmysqlpass
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/config/database.php
sed -i "s/passz/${ROOTMYSQL}/g" /var/www/html/.env
IP=`ifconfig eth0 | grep "inet addr" | head -n 1 | cut -d : -f 2 | cut -d " " -f 1`
sed -i "s/ips/${IP}/g" /var/www/html/config/app.php

info="Установка пройдена успешно!\n
--------------------------------------------------\n
Адрес сайта:\n
URL: http://$IP/\n
--------------------------------------------------\n
--------------------------------------------------\n
Данные от PHPmyadmin:\n
Адрес: http://$IP/phpmyadmin/\n
Пользователь: root\n
Пароль: $rootmysqlpass\n
База: site\n
--------------------------------------------------\n
Спасибо за использования установщика fastauto \n
Все эти данные успешно сохранены в разделе /var/www/ файл ruskript.txt\n
-------------------RU-SKRIPT.RU-----------\n"
echo $info
echo $info > /var/www/ruskript.txt
		;; 		


		0) menu;;
	esac	
			
}
install_info()
{
	for i in `seq 1 100`;
do
   echo 
done
echo "Skype:vladislavpovarnitsyn
--------------------------------------------------
Почта:vladik.hac10@mail.ru
--------------------------------------------------
Вк:https://vk.com/id150199663
--------------------------------------------------
Группа: http://vk.com/ru_skript
--------------------------------------------------
Сайт: http://ru-skript.ru
--------------------------------------------------
Установщик сделал: GurdenHack" 

}
install_fixaut()
{
	apt-get install build-essential
	sudo apt-get install php-pear php5-dev
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	sudo pecl install  mongo 
	wget http://ru-skript.ru/faster/fixa.zip
		 unzip fixa.zip -d /etc/php5/apache2/
	sudo service apache2 restart
	menu
	
}
install_mag()
{
	
		apt-get update
			apt-get install sudo
			curl -O http://vestacp.com/pub/vst-install.sh
			bash vst-install.sh


		
}
configure_bot()
{
	upd
	clear
	Info
	log_t "Список ботов"
	log_t "Бот mongo скачивается в папку botmo"
	log_t "Бот laravel скачивается в папку botru "
	Info "- 1  -  Скачать бота mongodb"
	Info "- 2  -  Скачать бота laravel"

	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
			1) 
			apt-get update
			dpkg --add-architecture i386
apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-get update 
install unzip
wget http://ru-skript.ru/faster/botmo.zip
			unzip botmo.zip -d /botmo/
			rm botmo.zip

			menu		
		;;	
		0) menu;;
2)
			apt-get update
			dpkg --add-architecture i386
apt-get install g++ curl libssl-dev --allow-unauthenticated -y -q
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs 
apt-get install sudo
sudo apt-get update 
install unzip
wget http://ru-skript.ru/faster/botlava.zip
			unzip botlava.zip -d /botru/
			rm botlava.zip

			menu		
		;;	
		0) menu;;
	esac
}
UPD="0"
upd()
{
	if [ "$UPD" = "0" ]; then

		apt-get update
		UPD="1"
	fi
	}
polez_dop()
{
	upd
	clear
	Info
	log_t "Дополнительное"

	Info "- 1  -  Скачать бота"
	Info "- 2  -  Пофиксить авторизацию"
	Info "- 3  -  Пофиксить phpmyadmin"
	Info "- 4  -  Скачать последнию версию установщика"
	Info "- 5  -  Перезагрузить vds"
	Info "- 6  -  Удалить скрипт"
	Info "- 0  -  В главное меню"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
			 
		1)configure_bot;;  
2)install_fixaut;;
3)echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
			service apache2 restart
			menu 
			
			;;	
4)install_update
menu;;
5)reboot	
menu;;	
6)rm -R /var/www/html/
mkdir 	/var/www/html	
chmod -R 777 /var/www/html/
menu;;	
0) menu;;
		esac
}
menu()
{
	clear
	Info
	cat up9.txt

	log_t "Добро пожаловать в установщик fastauto v.5.0 by ru-skript.ru" 
	
	Info "- 1  -  Установить Скрипт Рулетки"
	Info "- 2  -  Установить VestaCP(панель хостинга)"
	Info "- 3  -  Установить Другие скрипты"
	Info "- 4  -  Дополнительное"
	Info "- 5  -  Создатель"
	Info "- 0  -  Выход"
	log_s
	Info
	read -p "Пожалуйста, введите пункт меню:" case
	case $case in
		1)install_script;;  
        2)install_mag;;  	
		3)install_drug;; 
        4)polez_dop;; 		
		5)install_info;;
		0)exit;;
	esac
}
menu
