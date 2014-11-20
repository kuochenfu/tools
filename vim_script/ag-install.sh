#!/bin/sh
echo "Build and install the silver search tool"
sudo apt-get install -y liblzma-dev
git clone https://github.com/ggreer/the_silver_searcher ag && cd ag && ./build.sh && sudo make install

echo "Install the ag search tool to Vundle"
echo "Bundle 'rking/ag.vim'" >> ~/.vimrc && vim +BundleInstall

