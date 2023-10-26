#! /bin/bash
cd /usr/bin/

if [ "$(id -u)" -ne 0 ]; then
        echo 'GoT Ro0t?' >&2
        exit 1
fi

ip link set wlan0 down
ip link set enp45s0 down
./macchanger -pA wlan0
./macchanger -pA enp45s0
ip link set wlan0 up
ip link set enp45s0 up
dhclient -r
dhclient
