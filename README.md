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
- Dotfiles slipped in with Chezmoi
- Brew for cli apps, with Brewfile in dotifles for semi-declarative management
- Fish as interactive shell (set through terminal emulator settings)
- Gnome configuration through gschema rules
    - Tiling Assistant extension
    - Gnome-Classic session removed
    - Gnome system monitor, Gnome Software, and Gnome Tweaks removed
- Trivalent browser (https://github.com/secureblue/trivalent)
- ADB and fastboot for Android
- Better Chinese input with Rime


## Installation

> [!Warning]
> This is my personal image, which I manage for myself. You may copy from or use this repo, but I will provide **no** provision of support or guarantee of functionality.

To rebase an existing Silverblue/Kinoite installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/oakleafknight06/startingleaf:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/oakleafknight06/startingleaf:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

This repository builds date tags as well, so if you want to rebase to a particular day's build:
```
rpm-ostree reb-ase ostree-image-signed:docker://ghcr.io/oakleafknight06/startingleaf:20250403
```
