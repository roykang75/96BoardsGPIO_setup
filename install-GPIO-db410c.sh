#!/usr/bin/env bash

echo "Install package dependencies"
echo "sudo apt-get install -y git build-essential autoconf automake libtool swig3.0 python-dev nodejs-dev cmake pkg-config libpcre3-dev"
sudo apt-get install -y git build-essential autoconf automake libtool swig3.0 python-dev nodejs-dev cmake pkg-config libpcre3-dev

echo "Install 96Boards configuration files"
echo "git clone https://github.com/96boards/96boards-tools.git"
git clone https://github.com/96boards/96boards-tools.git
sudo cp 96boards-tools/70-96boards-common.rules /etc/udev/rules.d/

echo "Installing Libraries"
echo "Install and build libsoc"
echo "git clone https://github.com/jackmitch/libsoc.git"
git clone https://github.com/jackmitch/libsoc.git
cd libsoc
autoreconf -i
./configure --enable-python2 --enable-board="dragonboard410c"
make && sudo make install
sudo ldconfig /usr/local/lib
cd ..

echo "Install and build 96BoardsGPIO"
echo "git clone https://github.com/roykang75/96BoardsGPIO.git"
git clone https://github.com/roykang75/96BoardsGPIO.git
cd 96BoardsGPIO
./autogen.sh
./configure
make && sudo make install
sudo ldconfig /usr/local/lib
cd ..

echo "Install and build MRAA library"
echo "git clone https://github.com/intel-iot-devkit/mraa.git"
git clone https://github.com/intel-iot-devkit/mraa.git
mkdir -p mraa/build
cd mraa/build
cmake ..
make
sudo make install
sudo ldconfig /usr/local/lib

echo "Install and build UPM library"
sudo ln -s /usr/bin/swig3.0 /usr/bin/swig
echo "git clone https://github.com/roykang75/upm.git"
git clone https://github.com/roykang75/upm.git
mkdir -p upm/build
cd upm/build
cmake -DBUILDSWIGNODE=OFF ..
make
sudo make install
sudo ldconfig /usr/local/lib/libump-*


