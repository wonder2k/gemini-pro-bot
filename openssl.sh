#!/bin/bash

yum update
yum install -y wget tar make gcc perl pcre-devel zlib-devel

wget --no-check-certificate https://www.openssl.org/source/openssl-1.1.1w.tar.gz

#yum install -y gcc make  perl

tar zxvf openssl-1.1.1w.tar.gz

cd openssl-1.1.1w
./config --prefix=/usr --openssldir=/etc/ssl --libdir=lib no-shared zlib-dynamic
make
make install

export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64
echo "export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib64" >> ~/.bashrc

openssl version

cd ..
yum -y install bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel

wget https://www.python.org/ftp/python/3.9.8/Python-3.9.8.tgz
tar -zxvf Python-3.9.8.tgz
cd Python-3.9.8
./configure --prefix=/usr/local/python3 --enable-shared --with-openssl=/usr/local/openssl
make && make install

openssl version
whereis openssl
