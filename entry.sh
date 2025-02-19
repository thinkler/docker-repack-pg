#!/usr/bin/env bash

apt-get install -y make unzip gcc libssl-dev zlib1g-dev liblz4-dev libreadline-dev libzstd-dev

# We need different repack version for different postgres versions. Check readme.md
wget -q -O pg_repack.zip "https://api.pgxn.org/dist/pg_repack/1.5.0/pg_repack-1.5.0.zip"
unzip pg_repack.zip && rm pg_repack.zip
cd pg_repack-*
make && make install
cd ..
rm -rf pg_repack-*
apt-get remove --auto-remove -y make unzip gcc libssl-dev zlib1g-dev libreadline-dev libzstd-dev
