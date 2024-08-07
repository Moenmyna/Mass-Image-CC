# Mass image conversion scripts

This repo contains some bash scripts that I've made to help me reduce the size of images on my drives.

To achieve this, I came across the clear winner that is .AVIF in terms of filesize reduction while keeping image quality very high if not indistinguishable from the original image. As a result, the majority of the scripts convert images to .AVIF.

## Installation and Usage
### Pre-requisite
- ImageMagick 7.1.1-33 or above

I recommend cloning this repo to a folder of your choosing and then symlinking the .sh scripts to your `~/.local/bin`. Make sure the .sh scripts have execute permissions with `chmod +x` if necessary!

To use the scripts once they are in `~/.local/bin`, in a terminal, move to the folder containing the images that you want to convert to .AVIF and run the appropriate script.

For example, if you wanted to convert all `.png` files in `~/Pictures`, do this:

```
cd ~/Pictures
png-to-avif.sh
```

Once completed, the script will create a new folder named `_review` and move all the `.png` files that were found into that folder.

