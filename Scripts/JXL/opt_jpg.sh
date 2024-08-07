#! /bin/bash

# Use this to optimize your existing .jpg losslessly!
# NOTE: You need the "cjxl" tool to run this!

for f in ./*.jp*g ; do cjxl --quiet --lossless_jpeg=1 "$f" "${f%.jp*g}.jxl" ; done
mkdir _review && mv *.jp*g _review
