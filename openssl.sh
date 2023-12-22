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

./configure --enable-shared  --with-openssl=/etc/ssl
make
make install
