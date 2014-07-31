#!/usr/bin/env sh

script_dir=$(cd "$(dirname "$0")"; pwd)

echo "script dir is $script_dir"

rm $HOME/.profile
echo "link $HOME/.profile to $script_dir/.profile"
ln -s $script_dir/.profile $HOME/.profile

rm $HOME/.gitconfig
echo "link $HOME/.gitconfig to $script_dir/.gitconfig"
ln -s $script_dir/.gitconfig $HOME/.gitconfig

