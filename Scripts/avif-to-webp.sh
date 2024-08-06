#! /bin/bash

for f in ./*.avif; do magick "$f" -quality 100 "${f%.avif}.webp" ; done
