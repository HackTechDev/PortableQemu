#!/bin/sh

mkdir -p ~/qemu/ubuntu1604_64/bin
mkdir -p ~/qemu/ubuntu1504_32/bin
mkdir -p ~/qemu/ubuntu1404_64/bin
mkdir -p ~/qemu/ubuntu1404_32/bin

cp ubuntu1604_64/bin/* ~/qemu/ubuntu1604_64/bin
cp ubuntu1504_32/bin/* ~/qemu/ubuntu1504_32/bin
cp ubuntu1404_64/bin/* ~/qemu/ubuntu1404_64/bin
cp ubuntu1404_32/bin/* ~/qemu/ubuntu1404_32/bin

chmod 755 ~/qemu/ubuntu1604_64/bin/*
chmod 755 ~/qemu/ubuntu1504_32/bin/*
chmod 755 ~/qemu/ubuntu1404_64/bin/*
chmod 755 ~/qemu/ubuntu1404_32/bin/*
