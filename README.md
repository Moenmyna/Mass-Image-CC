# Mass image compression and conversion scripts

This repo contains some bash scripts that I've made to help me reduce the size of images on my drives.

Inside you'll find scripts that convert images primarily to either AVIF or JXL. Most people will probably want to use the AVIF scripts due to support for JXL being low (Unfortunately...😢) but feel free to use what you prefer! Additionally all the scripts have comments inside describing what they do, so please look at their source if their purpose is unclear.

You can also find copy-pastable versions of the scripts in the `One_Line_Scripts.md` document in this repo; in the event that you don't want to install the scripts themselves and just want to perform a conversion manually or tweak the settings more easily before running!

> [!CAUTION]
> **Disclaimer**: My hope in sharing these is that they will be found useful but please note that you do so at your ***own risk!*** I am not responsible for any potential loss of data that may occur when using these scripts!

## Installation and Usage
### Pre-requisite
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) 7.1.1-33 or above
- [libjxl-utils](https://github.com/libjxl/libjxl)

I recommend cloning this repo to a folder of your choosing and then symlinking the scripts you want to your `~/.local/bin` from the repo. You can also place them anywhere you'd like, as long as they're on your **$PATH**. Make sure that the scripts have execute permissions with `chmod +x` if necessary!

To use the scripts once they are in `~/.local/bin`, in a terminal, move to the folder containing the images that you want to convert to AVIF/JXL and run the appropriate script.

For example, if you wanted to convert all `.png` files in `~/Pictures` to `.avif`, do this:

```
cd ~/Pictures
png-to-avif
```

The script will first try to create a new folder named `_review` and if successful, begin converting all `.png` files it finds, before finally moving all the original `.png` files to the `_review` folder.
