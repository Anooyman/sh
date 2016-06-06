#!/bin/sh
for file in *.svg

do
     /usr/bin/inkscape -z -f "${file}" -w 640 -e "${file}.png"
	 mv "${file}.png" /home/anooy/graphviz/png
done
