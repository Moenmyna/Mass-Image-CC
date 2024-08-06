#! /bin/bash

for f in ./*.png ; do magick "$f" -quality 98 "${f%.png}.avif" ; done
