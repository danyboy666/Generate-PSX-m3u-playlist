#!/bin/bash
# -*- coding: UTF8 -*-
#
# Name : generate_psx_m3u.sh
# Usage : Copy script in working dir and execute.
# Simple script to generate an .m3u playlist file for every title found in the folder
# This will take care of multi disc as well as single disk.
#
# Usage: ./generate_psx_m3u.sh

for i in *.cue
do
        title=$(echo "$i" | sed s'/.cue//g;s/ (Disc..)//g;s/ Disc..*$//g;s/ (.*//g')

        echo "$i" >> "$title".m3u
done
