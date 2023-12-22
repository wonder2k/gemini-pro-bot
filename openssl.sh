#!/bin/bash

yum update
yum install -y wget tar make gcc perl pcre-devel zlib-devel

wget --no-check-certificate https://www.openssl.org/source/openssl-1.1.1w.tar.gz

#yum install -y gcc make  perl

ls
tar zxvf openssl-1.1.1w.tar.gz
ls

cd openssl-openSSL_1_1_1w
./config --prefix=/usr/local/openssl
make
make install

mv /usr/bin/openssl /usr/bin/openssl.old
mv /usr/lib64/openssl /usr/lib64/openssl.old
mv /usr/lib64/libssl.so /usr/lib64/libssl.so.old
ln -s /usr/local/openssl/bin/openssl /usr/bin/openssl
ln -s /usr/local/openssl/include/openssl /usr/include/openssl
ln -s /usr/local/openssl/lib/libssl.so /usr/lib64/libssl.so
echo "/usr/local/openssl/lib" >> /etc/ld.so.conf
ldconfig -v
openssl version
