# Mass image compression and conversion scripts

This repo contains some bash scripts that I've made to help me reduce the filesize of images on my drives. This was both a way to help solve a problem my own way as well as help me learn more about bash scripting!

The scripts I've made convert images primarily to either AVIF or JXL. Most people will probably want to use the AVIF scripts due to overall support for JXL being low (Unfortunately...😢) but feel free to use what you prefer! 

Additionally all the scripts have comments inside describing what they do, so please look at their source if their purpose is unclear.

![A gif of img-cc in action, made with VHS!](https://vhs.charm.sh/vhs-4VH5m1ZXZj7pysq9p0I89E.gif)

> [!CAUTION]
> **Disclaimer**: My hope in sharing these is that they will be found useful but please note that you do so at your ***own risk!*** I am not responsible for any potential loss of data that may occur when using these scripts!

## Installation and Usage
### Pre-requisites
- [ImageMagick](https://github.com/ImageMagick/ImageMagick) `7.1.1-33` or above
- [libjxl-utils](https://github.com/libjxl/libjxl) `0.8.3` or above
### Required if using img-cc
- [Gum](https://github.com/charmbracelet/gum) `0.14.5` or above

<br>

> [!TIP]
> Before running the script, I'd recommend moving the images you want to convert to their own folder; the script will convert *everything* that matches the chosen pattern in the current folder only.

#### Using img-cc - (Recommended)

Clone the repo or download the latest release and if necessary, give `img-cc` execute permissions with `chmod +x`. Then just symlink `img-cc` anywhere that's on your **$PATH**, such as `~/.local/bin`.

Once done, navigate to a folder in your terminal with the images you want to convert, run the script by typing `img-cc` and choose the prompt appropriate to what you want to convert!

Once done, you will find all the original images that were converted in the `_review` folder that was created at the start. If the converted images look good, then feel free to remove the images in `_review`!

#### Using the loose legacy scripts

As before, I recommend cloning this repo to a folder of your choosing or downloading the latest release and then symlinking the scripts you want to your `~/.local/bin` from the repo. You can also place them anywhere you'd like, as long as they're on your **$PATH**. Make sure that the scripts have execute permissions with `chmod +x` if necessary!

To use the scripts once they are in `~/.local/bin`, in a terminal, move to the folder containing the images that you want to convert and run the appropriate script.

For example, if you wanted to convert all `.png` files in `~/Pictures` to `.avif`, do this:

```
cd ~/Pictures
png-avif
```
Once done, look for the original images in `_review` and if the converted images look good, feel free to remove the images in the folder!
