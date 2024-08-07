#! /bin/bash

# Use this to optimize existing .jpg!

# Find all the .jpg/jpeg files in the current working directory, invoke the magick command on each file, convert those files to .jxl with the quality setting at "95", do this until all files have been converted.
for f in ./*.jp*g ; do magick "$f" -quality 95 "${f%.jp*g}.jxl" ; done
# Move all the leftover .jpg files to a review folder after conversion is complete.
mkdir _review && mv ./*.jpg _review
