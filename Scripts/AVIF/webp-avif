#! /bin/bash

# SPDX-License-Identifier: MPL-2.0

# Find all the .webp files in the current working directory, invoke the magick command on each file, 
# convert those files to .avif with the quality setting at "98", do this until all files have been converted.

for f in ./*.webp ; do magick "$f" -quality 98 "${f%.webp}.avif" ; done

# Move all the leftover .webp files to a review folder after conversion is complete.

mkdir _review && mv ./*.webp _review
