#! /bin/bash
cd /usr/bin/

if [ "$(id -u)" -ne 0 ]; then
        echo 'GoT Ro0t?' >&2
        exit 1
fi

ip link set FuckOff down
ip link set enp45s0 down
./macchanger -pA FuckOff
./macchanger -pA enp45s0
ip link set FuckOff up
ip link set enp45s0 up
dhclient -r
dhclient
