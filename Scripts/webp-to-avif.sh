#! /bin/bash

for f in ./*.webp ; do magick "$f" -quality 98 "${f%.webp}.avif" ; done
