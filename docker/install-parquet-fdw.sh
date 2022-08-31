#!/usr/bin/env bash

apt-get update
apt-get install -y git

git clone https://github.com/adjust/parquet_fdw.git

apt-get update
apt-get -y install \
     build-essential \
     cmake \
     postgresql-server-dev-14

cd parquet_fdw || exit
make install
