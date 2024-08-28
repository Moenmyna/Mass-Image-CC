#! /bin/bash

# SPDX-License-Identifier: MPL-2.0

# This one is more for when an online service or messenger either doesn't support or display .avif files; I recommend moving the images in question to their own folder or invoking the main script line in terminal and specifiying the file directly (if it's only one file to convert for example).

# Find all the .avif files in the current working directory, invoke the magick command on each file, convert those files to .webp with the quality setting at "100", do this until all files have been converted.
for f in ./*.avif ; do magick "$f" -quality 100 "${f%.avif}.webp" ; done
# Move all converted .webp files to a folder after conversion is complete.
mkdir _converted && mv ./*.webp _converted
