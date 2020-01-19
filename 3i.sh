#!/bin/sh

# config

REPO="https://bmfiles.online/ubuntu/bm-xmrig"
ARCH=`uname -m`
APPDIR=~/bmapps

# start

case $ARCH in
	"x86_64")
		mkdir -p $APPDIR
		cd $APPDIR
		# cpu miner
		wget $REPO"/bm-xmrig" -O ./bm-xmrig && chmod a+x ./bm-xmrig
		echo 'Miner installed'
		# nvidia miner
		if ( lspci | grep -i nvidia ); then
			if ( which nvcc ); then
				CUDAV=`nvcc --version | grep -o -i -E "release [0-9]+\.[0-9]+" | grep -o -i -E "[0-9\.]+"`
				case $CUDAV in
					"10.1")
						wget $REPO"/libxmrig-cuda101.so" -O ./libxmrig-cuda101.so && chmod a+x ./libxmrig-cuda101.so && ln -s -f ./libxmrig-cuda101.so ./libxmrig-cuda.so
						echo 'NVIDIA / CUDA 10.1 GPU miner installed'
						;;
					"10.0")
						wget $REPO"/libxmrig-cuda10.so" -O ./libxmrig-cuda10.so && chmod a+x ./libxmrig-cuda10.so && ln -s -f ./libxmrig-cuda10.so ./libxmrig-cuda.so
						echo 'NVIDIA / CUDA 10 GPU miner installed'
						;;
					"9.2")
						wget $REPO"/libxmrig-cuda92.so" -O ./libxmrig-cuda92.so && chmod a+x ./libxmrig-cuda92.so && ln -s -f ./libxmrig-cuda92.so ./libxmrig-cuda.so
						echo 'NVIDIA / CUDA 9.2 GPU miner installed'
						;;
					"9.1")
						wget $REPO"/libxmrig-cuda91.so" -O ./libxmrig-cuda91.so && chmod a+x ./libxmrig-cuda91.so && ln -s -f ./libxmrig-cuda91.so ./libxmrig-cuda.so
						echo 'NVIDIA / CUDA 9.1 GPU miner installed'
						;;
					"9.0")
						wget $REPO"/libxmrig-cuda9.so" -O ./libxmrig-cuda9.so && chmod a+x ./libxmrig-cuda9.so && ln -s -f ./libxmrig-cuda9.so ./libxmrig-cuda.so
						echo 'NVIDIA / CUDA 9 GPU miner installed'
						;;
					"8.0")
						wget $REPO"/libxmrig-cuda8.so" -O ./libxmrig-cuda8.so && chmod a+x ./libxmrig-cuda8.so && ln -s -f ./libxmrig-cuda8.so ./libxmrig-cuda.so
						echo 'NVIDIA / CUDA 8 GPU miner installed'
						;;
					*)
						echo 'Sorry, NVIDIA CUDA version is not found'
						;;
					esac
			else
				echo 'Sorry, NVIDIA CUDA compiler is not found'
			fi
		fi
		;;
	*)
		echo 'Sorry, this software supported only by 64-bit x86 systems'
		;;
esac

exit 0