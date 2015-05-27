#!/usr/bin/env sh

script_dir=$(cd "$(dirname "$0")"; pwd)

echo "setup script is located in $script_dir"

echo "link $script_dir/.profile to $HOME/.profile"
ln -sf $script_dir/.profile $HOME/.profile

echo "link $script_dir/.gitconfig to $HOME/.gitconfig"
ln -sf $script_dir/.gitconfig $HOME/.gitconfig

echo "link $script_dir/pip to $HOME/pip"
ln -sf $script_dir/pip $HOME/pip

echo "link $script_dir/.pip to $HOME/.pip"
ln -sf $script_dir/.pip $HOME/.pip

echo "link $script_dir/.gemrc to $HOME/.gemrc"
ln -sf $script_dir/.gemrc $HOME/.gemrc

echo "link $script_dir/.npmrc to $HOME/.npmrc"
ln -sf $script_dir/.npmrc $HOME/.npmrc

