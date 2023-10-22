#!/bin/bash
for i in *.svg; do
    [ -f "$i" ] || break
    filename=$(basename -- $i)
    extension="${filename##*.}"
    filename="${filename%.*}"
    inkscape $filename.svg --export-pdf=$filename.pdf
done
