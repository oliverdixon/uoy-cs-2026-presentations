#!/bin/sh

for file in *.svg; do
    outfile="${file%.svg}.pdf"
    echo "Converting ${file} to ${outfile}"
    rsvg-convert -f pdf -o "${outfile}" "${file}"
done
