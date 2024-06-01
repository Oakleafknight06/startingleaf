# Startingleaf
_Atomic Desktop built on Fedora and Universal Blue with BlueBuild_

[![bluebuild](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml/badge.svg)](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml)

For more info, check out the [BlueBuild homepage](https://blue-build.org/) and the [uBlue homepage](https://universal-blue.org/)

## Changelist (probably incomplete)
- Added Mullvad VPN
- Added ShowMeTheKey
- Apple SuperDrive udev rule (requires sg3_utils package)
- Gnome, KDE, and Sway images
- IntelOneMono NF, JetBrainsMonoNF, and Roboto installed
- Dotfiles slipped in with Chezmoi
- Brew for cli apps (coming soon)
- Various tweaks for Gnome on the Gnome image

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

KDE image is `kartingleaf` and sway image is `swayingleaf`
yes, I know, very creative names 

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.
