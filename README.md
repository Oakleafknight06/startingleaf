# Startingleaf
_A bootable container desktop built on Fedora Atomic and Secureblue with BlueBuild_


[![build](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml/badge.svg)](https://github.com/Oakleafknight06/startingleaf/actions/workflows/build.yml)
[![provenance verification](https://github.com/Oakleafknight06/startingleaf/actions/workflows/provenance.yml/badge.svg)](https://github.com/Oakleafknight06/startingleaf/actions/workflows/provenance.yml)

For more info, check out the [BlueBuild](https://blue-build.org/) and [Secureblue](https://secureblue.dev) websites.

## Feature List
- Apple SuperDrive udev rule (requires sg3_utils package)
    - Rule from this [gist](https://gist.github.com/yookoala/818c1ff057e3d965980b7fd3bf8f77a6) by @yookoala
- Nerd fonts
- MoreWaita and Adw-GTK3 for consistent Gnome look
- [Tailscale](https://tailscale.com) for easy networking
- [Mullvad](https://mullvad.net) VPN
- [Dotfiles](https://github.com/oakleafknight06/dotfiles) with Chezmoi
- [Brew](https://brew.sh) for cli apps, with Brewfile in dotifles for semi-declarative management
- [Fish](https://fishshell.com) as interactive shell (set through terminal emulator settings)
- Gnome configuration
    - [Tiling Assistant](https://github.com/Leleat/Tiling-Assistant) extension
    - Gnome-Classic session removed
    - Gnome system monitor, Gnome Software, and Gnome Tweaks removed
    - Keyboard shortcuts and system settings defined through gschema overrides
- [Trivalent](https://github.com/secureblue/trivalent) web browser
- ADB, Fastboot, and [scrcpy](https://github.com/Genymobile/scrcpy) for Android devices
- Better Chinese input with [Rime](https://rime.im)
- [Syncthing](https://syncthing.net) to .. you know .. sync things
- [Landrun](https://github.com/Zouuup/landrun)
- Yubico Authenticator desktop app

### Incomplete or Incoming Features
- Syncthing systemd service (See https://docs.syncthing.net/users/autostart.html#linux)

## Features required as a Secureblue downstream image
### Implemented
- Image name starts with `silverblue` for audit script compatibility

### Incoming
- Provenance verification

## Installation
> [!Warning]
> This is my personal image, which I manage for myself. You may copy from this repo or use these images, but I will not provide any support or guarantee of functionality.

1. [Install Secureblue](https://secureblue.dev/install)
2. `run0 podman image trust set -t accept ghcr.io/oakleafknight06`
3. Rebase onto the custom image like so:
   ```
   rpm-ostree rebase ostree-image-signed:docker://ghcr.io/oakleafknight06/silverblue-startingleaf:latest
   ```
4. Reboot into the custom image
5. Reset container policy: `run0 cp /usr/etc/containers/policy.json /etc/containers/policy.json`
