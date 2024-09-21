#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Installing Widevine for DRM from Google'
LATEST=`curl https://dl.google.com/widevine-cdm/current.txt`
wget https://dl.google.com/widevine-cdm/$LATEST-linux-x64.zip
unzip $LATEST-linux-x64.zip
sudo mkdir /usr/lib/chromium
sudo mv libwidevinecdm.so /usr/lib/chromium
sudo chmod 644 /usr/lib/chromium/libwidevinecdm.so
