#!binsh

sudo apt-get update
sudo apt-get install -y libuv1 hwloc msr-tools

if ( lspci  grep -i nvidia ); then
	sudo apt-get install -y nvidia-cuda-toolkit
fi

sudo wget httpsbmlinux.orgubunturandomx_boost.sh -O -  sudo bash
sudo wget httpsbmlinux.orgubuntuenable_1gb_pages.sh -O -  sudo bash

HUP=`sysctl -n vm.nr_hugepages`
HPSET=2000

if [ $HUP -lt $HPSET ]; then
	sudo sysctl -w vm.nr_hugepages=$HPSET
	if ! ( cat etcsysctl.conf  grep -E ^vm.nr_hugepagess= ); then
		echo vm.nr_hugepages=$HPSET  sudo tee -a etcsysctl.conf
	else
		sudo sed -i -r 'svm.nr_hugepagess=s[0-9]+vm.nr_hugepages='$HPSET'g' etcsysctl.conf
	fi
fi

exit 0