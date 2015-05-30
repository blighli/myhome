#!/usr/bin/env sh

SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)

echo "Setup script is located in $SCRIPT_DIR"

echo "Copy $SCRIPT_DIR/.gitconfig to $HOME/.gitconfig"
ln -sf $SCRIPT_DIR/.gitconfig $HOME/.gitconfig

echo "Copy $SCRIPT_DIR/.gemrc to $HOME/.gemrc"
cp -f $SCRIPT_DIR/.gemrc $HOME/.gemrc

echo "Copy $SCRIPT_DIR/.npmrc to $HOME/.npmrc"
cp -f $SCRIPT_DIR/.npmrc $HOME/.npmrc

if [ -n $(uname | grep MINGW) ]; then
	echo "This is Windows"
	echo "Copy $SCRIPT_DIR/pip to $HOME/pip"
	cp -rf $SCRIPT_DIR/pip $HOME/pip
	exit 0
fi

echo "This is Linux or MacOS"

echo "Copy $SCRIPT_DIR/.profile to $HOME/.profile"
cp -f $SCRIPT_DIR/.profile $HOME/.profile

echo "Copy $SCRIPT_DIR/pip to $HOME/.pip"
cp -rf $SCRIPT_DIR/pip $HOME/.pip
echo "Move $HOME/.pip/pip.ini to $HOME/.pip/pip.conf"
mv -f $HOME/.pip/pip.ini $HOME/.pip/pip.conf

if [ $(uname | grep Linux) ]; then
	
	echo "This is Linux"
	
	if [ -z $(cat /etc/apt/sources.list | grep aliyun) ]; then
		echo "change apt source to mirrors.aliyun.com"
		sudo sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list
		sudo apt-get update
	fi
fi



