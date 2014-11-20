#!/bin/sh

# from https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
# install the prequisite libraries, including Mercurial.
echo "From https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source"
echo "Install the required packages"
sudo apt-get install -y \
    libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial


# remove the vim if you have ia already.
echo "Remove the vim and related pacakges"
sudo apt-get remove -y vim vim-runtime gvim

# on ubuntu 12.04.2, we have remove following packages as well.
sudo apt-get remove -y vim-tiny vim-common vim-gui-common

#
echo "Check the source code out and compile"
cd ~/software
hg clone https://code.google.com/p/vim/
cd vim
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7-config \
            --enable-perlinterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install

# set vim as the default editor.
echo "Set vim as default  editor"
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

# get the vundle and install it. (need git tool first)
# after clone it, we can check the readme in the .vim/bundle/vundle to modify the .vimrc file.
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# install the YCM with Vundle, we have to add the "Bundle 'Valloric/YouCompleteMe'" line to .vimrc
# After install YCM by Vundle, goto ./vim/bundle/YouCompleteMe folder. Install the YCM by "install.sh".
# More information, check the https://github.com/Valloric/YouCompleteMe.

