# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#define
APPS=$HOME/apps

#export
export JAVA_HOME=$APPS/jdk
export M2_HOME=$APPS/maven
export ANT_HOME=$APPS/ant

#path
PATH=$PATH:$APPS/jdk/bin
PATH=$PATH:$APPS/node/bin
PATH=$PATH:$APPS/ant/bin
PATH=$PATH:$APPS/maven/bin
PATH=$PATH:$APPS/ruby/bin
PATH=$PATH:$APPS/play
PATH=$PATH:$APPS/nginx/sbin

