#! /bin/bash

# Find all the .jpg files in the current working directory, invoke the magick command on each file, convert those files to .avif with the quality setting at "96", do this until all files have been converted.
for f in ./*.jpg ; do magick "$f" -quality 96 "${f%.jpg}.avif" ; done
# Move all the leftover .jpg files to a review folder after conversion is complete.
mkdir _review && mv ./*.jpg _review
