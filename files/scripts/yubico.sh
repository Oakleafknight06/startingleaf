#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

# Get yubico authenticator from here https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-linux.tar.gz and uncompress it
mkdir /tmp/yubico
wget https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-linux.tar.gz /tmp/yubico
tar -xzvf /tmp/yubico/yubico-authenticator-latest-linux.tar.gz

# Move the .desktop file to the right place
mv /tmp/yubico/yubico-authenticator-latest-linux/linux_support/com.yubico.yubioath.desktop /usr/share/applications/

# Not sure if the icon will work this way
# mv /tmp/yubico/yubico-authenticator-latest-linux/linux_support/com.yubico.yubioath.png /usr/share/icons

# Move the executable and other stuff to the proper directories
mkdir /usr/bin/yubico-authenticator
mv /tmp/yubico/yubico-authenticator-latest-linux/authenticator /usr/bin/yubico-authenticator
mv /tmp/yubico/yubico-authenticator-latest-linux/data /usr/bin/yubico-authenticator
mv /tmp/yubico/yubico-authenticator-latest-linux/helper /usr/bin/yubico-authenticator
mv /tmp/yubico/yubico-authenticator-latest-linux/lib /usr/bin/yubico-authenticator

# "authenticator" is the binary, "data" "helper" "lib" directories required. Not sure where they go though. Can one have folders in /usr/bin?
