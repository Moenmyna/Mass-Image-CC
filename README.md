# Mass image compression and conversion scripts

> [!NOTE] 
> As of **30 Oct 2024**, the scripts have been re-written into one main script for ease of use; as well as to leverage additional features from [Gum](https://github.com/charmbracelet/gum)! I recommend using this over the individual loose scripts to avoid cluttering your **$PATH** as well as for the easier use 😊

This repo contains some bash scripts that I've made to help me reduce the size of images on my drives.

Here you'll find scripts that convert images primarily to either AVIF or JXL. Most people will probably want to use the AVIF scripts due to support for JXL being low (Unfortunately...😢) but feel free to use what you prefer! Additionally all the scripts have comments inside describing what they do, so please look at their source if their purpose is unclear.


> [!CAUTION]
> **Disclaimer**: My hope in sharing these is that they will be found useful but please note that you do so at your ***own risk!*** I am not responsible for any potential loss of data that may occur when using these scripts!

## Installation and Usage
### Pre-requisites
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) `7.1.1-33` or above
- [libjxl-utils](https://github.com/libjxl/libjxl) `0.8.3` or above
### Required if using img-cc
- [Gum](https://github.com/charmbracelet/gum) `0.14.5` or above


#### Using img-cc

Clone the repo and if necessary, give `img-cc` execute permissions with `chmod +x`. Then just symlink `img-cc` anywhere that's on your **$PATH**, such as `~/.local/bin`.

Once done, navigate to a folder in your terminal with the images you want to convert, run the script by typing `img-cc` and choose the prompt appropriate to what you want to convert!

Once done, you will find all the original images that were converted in the `_review` folder that was created at the start. If the converted images look good, then feel free to remove the images in `_review`!

#### Using the loose legacy scripts

As before, I recommend cloning this repo to a folder of your choosing and then symlinking the scripts you want to your `~/.local/bin` from the repo. You can also place them anywhere you'd like, as long as they're on your **$PATH**. Make sure that the scripts have execute permissions with `chmod +x` if necessary!

To use the scripts once they are in `~/.local/bin`, in a terminal, move to the folder containing the images that you want to convert and run the appropriate script.

For example, if you wanted to convert all `.png` files in `~/Pictures` to `.avif`, do this:

```
cd ~/Pictures
png-avif
```
Once done, look for the original images in `_review` and if the converted images look good, feel free to remove the images in the folder!
