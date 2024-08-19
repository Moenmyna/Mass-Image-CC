# One-line scripts for mass image conversion

If you'd prefer not to invoke the shell files included in the repo, you can use these one-liners in your terminal to perform the same operations manually!

I recommend running `mkdir _rev && mv *.<extension> _rev` after doing the conversion, replacing `*.<extension>` with the file extension that you converted from (for example, for JPG to JXL, you'd do `mkdir _rev && mv *.jp*g _rev`).

Happy converting!

## Main script (PNG to AVIF)
```bash
for f in ./*.png ; do magick "$f" -quality 98 "${f%.png}.avif" ; done
```

## Script to reduce filesize of JPGs (JPG to AVIF)
```bash
for f in ./*.jpg ; do magick "$f" -quality 96 "${f%.jpg}.avif" ; done
```

### If it's *really* big, add -resize flag, adjust % from 80%-50% as necessary
```bash
for f in ./*.jpg ; do magick "$f" -resize 75% -quality 96 "${f%.jpg}.avif" ; done
```

## Script to reduce WEBP (WEBP to AVIF)
```bash
for f in ./*.webp ; do magick "$f" -quality 98 "${f%.webp}.avif" ; done
```

### If AVIF doesn't work, change to WEBP for sharing easily
```bash
for f in ./*.avif; do magick "$f" -quality 100 "${f%.avif}.webp" ; done
```

## Script to convert PNG to JXL
```bash
for f in ./*.png ; do magick "$f" -quality 98 "${f%.png}.jxl" ; done
```

### Using the JXL ref tool
```bash
for f in ./*.png ; do cjxl --quiet "$f" "${f%.png}.jxl" ; done
```

## Optimize JPG to JXL (If you can't get/use the JXL ref tool)
```bash
for f in ./*.jp*g ; do magick "$f" -quality 95 "${f%.jp*g}.jxl" ; done
```

### Using the reference JXL tool from libjxl-utils! [BEST OPTION]
```bash
for f in ./*.jp*g ; do cjxl --quiet --lossless_jpeg=1 "$f" "${f%.jp*g}.jxl" ; done
```
