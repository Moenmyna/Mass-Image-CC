#! /bin/bash

for f in ./*.jpg ; do magick "$f" -quality 96 "${f%.jpg}.avif" ; done
