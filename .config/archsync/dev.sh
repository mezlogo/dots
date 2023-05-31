#!/bin/env bash

echo "add groups"
sudo gpasswd -a $USER libvirt
sudo gpasswd -a $USER wireshark
sudo gpasswd -a $USER docker
