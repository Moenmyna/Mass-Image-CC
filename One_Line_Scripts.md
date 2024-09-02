# One-line scripts for mass image compression and conversion

If you'd prefer not to invoke the shell files included in the repo, you can use these one-liners in your terminal to perform the same operations manually!

I recommend running `mkdir _rev && mv *.<extension> _rev` after doing the conversion, replacing `*.<extension>` with the file extension that you converted from (for example, for JPG to JXL, you'd do `mkdir _rev && mv *.jp*g _rev`).

Happy converting!

# AVIF Targets

## (PNG to AVIF) [Lossy]
```bash
for f in ./*.png ; do magick "$f" -quality 98 "${f%.png}.avif" ; done
```

## (JPG to AVIF) Script to reduce filesize of JPGs [Lossy]
```bash
for f in ./*.jp*g ; do magick "$f" -quality 96 "${f%.jp*g}.avif" ; done
```

## (JPG to AVIF) If it's *really* big, add -resize flag, adjust % from 80%-50% as necessary [Lossy]
```bash
for f in ./*.jp*g ; do magick "$f" -resize 75% -quality 96 "${f%.jp*g}.avif" ; done
```

## (WEBP to AVIF) Script to reduce WEBP [Lossy]
```bash
for f in ./*.webp ; do magick "$f" -quality 98 "${f%.webp}.avif" ; done
```

## (AVIF to WEBP) If AVIF doesn't work, change to WEBP for sharing easily [Lossless]
```bash
for f in ./*.avif; do magick "$f" -quality 100 "${f%.avif}.webp" ; done
```

# JXL Targets
> For these, the reference tool (CJXL) is preferred but scripts that use ImageMagick are provided for those who can't use it!

## (PNG to JXL) [Lossy]
```bash
for f in ./*.png ; do magick "$f" -quality 98 "${f%.png}.jxl" ; done
```

## (PNG to JXL) Using the JXL reference tool [Lossy]
```bash
for f in ./*.png ; do cjxl -d 0.4 --quiet "$f" "${f%.png}.jxl" ; done
```

## (JPG to JXL) Using the reference JXL tool [Lossless]
```bash
for f in ./*.jp*g ; do cjxl --quiet --lossless_jpeg=1 "$f" "${f%.jp*g}.jxl" ; done
```

## (JPG to JXL) Reduce filesize using the reference tool [Lossy]
```bash
for f in ./*.jp*g ; do cjxl --quiet -d 1.0 --lossless_jpeg=0 "$f" "${f%.jp*g}.jxl" ; done
```

## (JPG to JXL) If you can't get/use the JXL ref tool [Lossy]
```bash
for f in ./*.jp*g ; do magick "$f" -quality 95 "${f%.jp*g}.jxl" ; done
```


