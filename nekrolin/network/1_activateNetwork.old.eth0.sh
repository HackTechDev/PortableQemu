#!/bin/sh


# Network packages:
# apt-get install uml-utilities
# apt-get install bridge-utils

sudo tunctl -u util01 -t tap0 
sleep 2
sudo tunctl -u util01 -t tap1
sleep 2
sudo tunctl -u util01 -t tap2
sleep 2
sudo tunctl -u util01 -t tap3
sleep 2




sudo ifconfig eth0 0.0.0.0 promisc up
#sudo ifconfig enp2s3 0.0.0.0 promisc up
sleep 2

sudo ifconfig tap0 0.0.0.0 promisc up
sleep 2
sudo ifconfig tap1 0.0.0.0 promisc up
sleep 2
sudo ifconfig tap2 0.0.0.0 promisc up
sleep 2
sudo ifconfig tap3 0.0.0.0 promisc up
sleep 2





sudo brctl addbr br0
sleep 2
sudo brctl stp br0 off
sleep 2

sudo brctl addif br0 eth0
#sudo brctl addif br0 enp2s3

sleep 2
sudo brctl addif br0 tap0
sleep 2
sudo brctl addif br0 tap1
sleep 2
sudo brctl addif br0 tap2
sleep 2
sudo brctl addif br0 tap3
sleep 2




sudo ifconfig br0 192.168.1.10 netmask 255.255.255.0
sleep 2
sudo route add default gw 192.168.1.1
sleep 2

sudo brctl show
sleep 2
