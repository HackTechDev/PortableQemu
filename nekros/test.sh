#!/bin/sh

MACADDRESS=`printf 'DE:AD:BE:EF:%02X:%02X' $((RANDOM%256)) $((RANDOM%256))`

currentuser="$(whoami)"

echo "Run Qemu"

echo "ubuntu1404_32"

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/media/$currentuser/nekros/ubuntu1404_32/lib/ ~/qemu/ubuntu1404_32/bin/qemu-system-i386  -k fr -sdl -localtime \
                    -drive file=/media/$currentuser/nekros/vhda/vhda.qcow2,format=qcow2,index=0,media=disk \
                    -drive file=/media/$currentuser/nekros/vhdb/vhdb.qcow2,format=qcow2,index=1,media=disk \
                    -L /media/$currentuser/nekros/qemu/pc-bios \
                    -enable-kvm -k fr -m 1024 -smp 2 


echo "ubuntu1404_64"

#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/media/$currentuser/nekros/ubuntu1404_64/lib/ ~/qemu/ubuntu1404_64/bin/qemu-system-x86_64  -k fr -sdl -localtime \
#                    -drive file=/media/$currentuser/nekros/vhda/vhda.qcow2,format=qcow2,index=0,media=disk \
#                    -drive file=/media/$currentuser/nekros/vhdb/vhdb.qcow2,format=qcow2,index=1,media=disk \
#                    -L /media/$currentuser/nekros/qemu/pc-bios \
#                    -enable-kvm -k fr -m 1024 -smp 2 


echo "ubuntu1604_64"

#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/media/$currentuser/nekros/ubuntu1604_64/lib/ ~/qemu/ubuntu1604_64/bin/qemu-system-x86_64  -k fr -sdl -localtime \
#                    -drive file=/media/$currentuser/nekros/vhda/vhda.qcow2,format=qcow2,index=0,media=disk \
#                    -drive file=/media/$currentuser/nekros/vhdb/vhdb.qcow2,format=qcow2,index=1,media=disk \
#                    -L /media/$currentuser/nekros/qemu/pc-bios \
#                    -enable-kvm -k fr -m 1024 -smp 2 
