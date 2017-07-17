#!/bin/sh

sudo ip addr flush dev eth0
sudo ip link set eth0 up
sudo ip link add name br0 type bridge
sudo ip link set eth0 master br0
sudo ip addr add 192.168.1.3/24 dev br0
sudo ip link set br0 up
sudo ip route add default via 192.168.1.1

sudo ip tuntap add tap0 mode tap
sudo ip link set tap0 up
sudo ip link set tap0 master br0

sudo ip tuntap add tap1 mode tap
sudo ip link set tap1 up
sudo ip link set tap1 master br0

sudo ip tuntap add tap2 mode tap
sudo ip link set tap2 up
sudo ip link set tap2 master br0

sudo ip tuntap add tap3 mode tap
sudo ip link set tap3 up
sudo ip link set tap3 master br0

sudo brctl show
