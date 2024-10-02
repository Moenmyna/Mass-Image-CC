# One-line scripts for mass image compression and conversion

If you'd prefer not to invoke the shell files included in the repo, you can use these one-liners in your terminal to perform the same operations manually!

By default, they replicate the scripts exactly; which includes moving the original images into a review folder. If you don't want this behaviour, just copy the script *without* `&& mkdir _review && mv ./*.<extension> _review`

Happy converting!

# AVIF Targets

## (PNG to AVIF) [Lossy]
```bash
for f in ./*.png ; do magick "$f" -quality 98 "${f%.*}.avif" ; done && mkdir _review && mv ./*.png _review
```

## (JPG to AVIF) Script to reduce filesize of JPGs [Lossy]
```bash
for f in ./*.jp*g ; do magick "$f" -quality 96 "${f%.*}.avif" ; done && mkdir _review && mv ./*.jp*g _review
```

## (JPG to AVIF) If it's *really* big, add -resize flag, adjust % from 80%-50% as necessary [Lossy]
```bash
for f in ./*.jp*g ; do magick "$f" -resize 75% -quality 96 "${f%.*}.avif" ; done && mkdir _review && mv ./*.jp*g _review
```

## (WEBP to AVIF) Script to reduce WEBP [Lossy]
```bash
for f in ./*.webp ; do magick "$f" -quality 98 "${f%.*}.avif" ; done && mkdir _review && mv ./*.webp _review
```

## (AVIF to WEBP) If AVIF doesn't work, change to WEBP for sharing easily [Lossless]
```bash
for f in ./*.avif; do magick "$f" -quality 100 "${f%.*}.webp" ; done && mkdir _review && mv ./*.avif _review
```

# JXL Targets
> For these, the reference tool (CJXL) is preferred but scripts that use ImageMagick are provided for those who can't use it!

## (PNG to JXL) [Lossy]
```bash
for f in ./*.png ; do magick "$f" -quality 98 "${f%.*}.jxl" ; done && mkdir _review && mv ./*.png _review
```

## (PNG to JXL) Using the JXL reference tool [Lossy]
```bash
for f in ./*.png ; do cjxl -d 0.4 --quiet "$f" "${f%.*}.jxl" ; done && mkdir _review && mv ./*.png _review
```

## (JPG to JXL) Using the reference JXL tool [Lossless]
```bash
for f in ./*.jp*g ; do cjxl --quiet --lossless_jpeg=1 "$f" "${f%.*}.jxl" ; done && mkdir _review && mv ./*.jp*g _review
```

## (JPG to JXL) Reduce filesize using the reference tool [Lossy]
```bash
for f in ./*.jp*g ; do cjxl --quiet -d 1.0 --lossless_jpeg=0 "$f" "${f%.*}.jxl" ; done && mkdir _review && mv ./*.jp*g _review
```

## (JPG to JXL) If you can't get/use the JXL ref tool [Lossy]
```bash
for f in ./*.jp*g ; do magick "$f" -quality 95 "${f%.*}.jxl" ; done && mkdir _review && mv ./*.jp*g _review
```

