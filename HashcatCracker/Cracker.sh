#!/bin/bash

sudo hashcat -m $1 -d 2 -w 2 $2 $3
