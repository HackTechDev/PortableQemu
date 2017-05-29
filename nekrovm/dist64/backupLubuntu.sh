#!/bin/sh

date=`date +%y%m%d_%H%M`

tar cvfz lubuntu_$date.tar.gz lubuntu
ls -lh *.tar.gz
