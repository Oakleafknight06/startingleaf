# Startingleaf
_Atomic Desktop built on Fedora and Secureblue with BlueBuild_

[![bluebuild](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml/badge.svg)](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml)

For more info, check out the [BlueBuild](https://blue-build.org/) and [Secureblue](https://secureblue.dev) websites

## Changelist
- ShowMeTheKey layered for keyboard testing
- Apple SuperDrive udev rule (requires sg3_utils package)
- Intel One Mono nerd font, JetBrains Mono nerd font; Roboto and Inter Google fonts installed
- MoreWaita and Adw-gtk3 for consistent Gnome look
- Tailscale installed
- Dotfiles slipped in with Chezmoi
- Brew for cli apps
- Fish as interactive shell (set through terminal emulator settings)
- Gnome configuration (Tiling Assistant added, gschema changed, some default apps and extensions removed.)
- Trivalent browser (https://github.com/secureblue/trivalent)   
- Distrobox templates (currently removed)
### Experimental:
*Incomplete/not added yet*
- Better Chinese input with fcitx5 etc
- Fingerprint reader support for Thinkpad X1 Yoga 1st gen
- Figure out the best way to ship android-platform-tools

## Installation

> **Warning**
> This is my personal image, which I manage for myself. You may copy from or use this repo, but I will offer **no** support or guarantee of functionality.

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
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/oakleafknight06/startingleaf:20230403
```
