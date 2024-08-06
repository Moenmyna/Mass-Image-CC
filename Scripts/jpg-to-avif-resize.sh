#! /bin/bash

## Modify "-resize" value between 80%-50% depending on amount of filesize you're trying to save
for f in ./*.jpg ; do magick "$f" -resize 75% -quality 96 "${f%.jpg}.avif" ; done
