# Startingleaf
_Atomic Desktop built on Fedora and Secureblue with BlueBuild_

[![bluebuild](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml/badge.svg)](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml)

For more info, check out the [BlueBuild](https://blue-build.org/) and [Secureblue](https://secureblue.dev) websites

## Feature List
- Apple SuperDrive udev rule (requires sg3_utils package)
    - Rule from this [gist](https://gist.github.com/yookoala/818c1ff057e3d965980b7fd3bf8f77a6) by @yookoala
- Intel One Mono, Adwaita Mono, and JetBrains Mono nerd fonts plus Roboto Google font installed
- MoreWaita and Adw-GTK3 for consistent Gnome look
- Tailscale for easy networking
- Mullvad VPN
- [Dotfiles](https://github.com/oakleafknight06/dotfiles) with Chezmoi
- Brew for cli apps, with Brewfile in dotifles for semi-declarative management
- Fish as interactive shell (set through terminal emulator settings)
- Gnome configuration through gschema rules
    - Tiling Assistant extension
    - Gnome-Classic session removed
    - Gnome system monitor, Gnome Software, and Gnome Tweaks removed
- [Trivalent](https://github.com/secureblue/trivalent) web browser
- ADB and fastboot for Android
- Better Chinese input with Rime
- Syncthing to .. you know .. sync things

## Incomplete/Incoming features
- MPD for media playback with [Euphonica](https://github.com/htkhiem/euphonica)
- Yubico Authenticator
- Add [Landrun](https://github.com/Zouuup/landrun)



## Installation

> [!Warning]
> This is my personal image, which I manage for myself. You may copy from this repo or use these images, but I provide **no** support or guarantee of functionality.

This repository currently builds two images, `startingleaf` and `startingleaf-nvidia-open`.

1. Install secureblue
2. Modify `/etc/containers/policy.json` to accept this image, by adding a section like so:
   ```
    "ghcr.io/oakleafknight06/startingleaf": [
          {
          "type": "insecureAcceptAnything"
          }
      ],
   ```
   
3. Rebase onto the custom image like so:
   ```
   rpm-ostree rebase ostree-image-signed:docker://ghcr.io/oakleafknight06/startingleaf:latest
   ```
4. Reboot into the custom image
