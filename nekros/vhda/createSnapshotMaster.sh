#!/bin/sh

Snapshot='gimp'

qemu-img convert -s snapshot_$Snapshot vhda.qcow2 -O raw master_$snapshot.img
