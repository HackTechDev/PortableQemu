#!/bin/sh

snapshot_name='snapshot'
qemu-img snapshot -a snapshot_$snapshot_name vhda.qcow2 
