#! /bin/bash

# SPDX-License-Identifier: MPL-2.0

# Use this to optimize your existing .jpg losslessly!
# NOTE: You need the "cjxl" tool to run this!

# Find all JPG files in current directory, use the CJXL tool to losslessly convert to JXL

for f in ./*.jp*g ; do cjxl --quiet --lossless_jpeg=1 "$f" "${f%.jp*g}.jxl" ; done

# Create directory _review and then move all JPG files into it

mkdir _review && mv ./*.jp*g _review
