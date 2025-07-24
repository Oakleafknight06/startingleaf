#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Get yubico authenticator from here https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-linux.tar.gz and uncompress it
# Run the desktop integration script, or make my own to move the .desktop file to the right place
# Move the executable and other stuff to the proper directories
