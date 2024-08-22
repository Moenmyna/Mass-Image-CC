#! /bin/bash

# Find all the .jpg files in the current working directory, invoke the magick command on each file, convert those files to .avif with the quality setting at "96", do this until all files have been converted.
# "-resize" flag has been added for additional filesize reduction.
# Modify "-resize" value between 80%-50% depending on amount of filesize you're trying to save.
for f in ./*.jp*g ; do magick "$f" -resize 75% -quality 96 "${f%.jp*g}.avif" ; done
# Move all the leftover .jpg files to a review folder after conversion is complete.
mkdir _review && mv ./*.jp*g _review
