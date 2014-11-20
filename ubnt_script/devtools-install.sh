#!/bin/sh
sudo apt-get install -y \
    vim \
    eclipse-platform \
    eclipse-jdt \
    eclipse-cdt \
    cmake \
    glib2.0 \
    gtk+-3.0 \
    vte-2.9 \
    openssh-server

# for ambarella                                                             
#sudo apt-get install -y \
#    libjpeg62

# for multimedia
#sudo apt-get install -y \
#    vlc browser-plugin-vlc \
#    ffmpeg

# manual doing following for gstreamer 1.x
#sudo add-apt-repository ppa:gstreamer-developers/ppa
#sudo apt-get update
#sudo apt-get install gstreamer1.0*

