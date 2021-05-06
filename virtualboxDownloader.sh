#!/bin/bash
echo "enter version number"
read a
echo "read number after version number before Linux amd64"
read b


wget https://download.virtualbox.org/virtualbox/$a/VirtualBox-$a-$b-Linux_amd64.run

chmod +x VirtualBox-$a-$b-Linux_amd64.run

sudo ./VirtualBox-$a-$b-Linux_amd64.run

rm VirtualBox-$a-$b-Linux_amd64.run

