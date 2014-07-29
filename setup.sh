#!/usr/bin/env sh

script_dir=$(cd "$(dirname "$0")"; pwd)

echo "script dir is $script_dir"

if [ -e $HOME/.profile ]; then
    echo "remove $HOME/.profile"
    rm $HOME/.profile
fi

echo "link $HOME/.profile to $script_dir/.profile"
ln -s $script_dir/.profile $HOME/.profile

echo ". $HOME/.profile"
. $HOME/.profile 

if [ -e $HOME/.gitconfig ]; then
    echo "remove $HOME/.gitconfig"
    rm $HOME/.gitconfig
fi

echo "link $HOME/.gitconfig to $script_dir/.gitconfig"
ln -s $script_dir/.gitconfig $HOME/.gitconfig
