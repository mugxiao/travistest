#!/bin/bash

sudo apt-get update  >/dev/null && 
sudo apt-get install -y wget git \
                        build-essential \
                        squashfs-tools \
                        libtool \
                        autotools-dev \
                        libarchive-dev \
                        automake \
                        autoconf \
                        uuid-dev \
                        libssl-dev >/dev/null


#sudo sed -i -e 's/^Defaults\tsecure_path.*$//' /etc/sudoers

# Check Python
sudo pip install --upgrade pip

# echo "Python Version:"
# #python --version
# sudo pip install sregistry[all]
# sregistry version
#echo "sregistry Version:"

# #Install Singularity
#sudo apt-get install singularity-container
cd /tmp && \
    git clone -b vault/release-2.5 https://www.github.com/sylabs/singularity.git
    cd singularity && \
    ./autogen.sh >/dev/null && \
    ./configure --prefix=/usr/local >/dev/null && \
    make >/dev/null && sudo make install >/dev/null
