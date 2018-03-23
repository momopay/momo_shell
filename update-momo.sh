#!/bin/bash

cd ~/
sudo momo-cli stop
sudo rm -fr momo/
sudo git clone https://github.com/momopay/momo.git
cd momo
sudo ./autogen.sh
sudo ./configure --without-gui --disable-tests
sudo make
sudo make install
sudo momod
