#!/bin/sh

snapshot_name=`date +%Y%m%d%H%M%S`
qemu-img snapshot -c snapshot_$snapshot_name vhda.qcow2 
qemu-img snapshot -l vhda.qcow2
