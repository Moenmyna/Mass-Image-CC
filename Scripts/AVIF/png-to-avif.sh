#! /bin/bash

# Find all the .png files in the current working directory, invoke the magick command on each file, convert those files to .avif with the quality setting at "98", do this until all files have been converted.
for f in ./*.png ; do magick "$f" -quality 98 "${f%.png}.avif" ; done
# Move all the leftover .png files to a review folder after conversion is complete.
mkdir _review && mv ./*.png _review
