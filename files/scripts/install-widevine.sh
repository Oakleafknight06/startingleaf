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
echo 'Making directory' && sudo mkdir /usr/lib/chromium
echo 'Moving file' && sudo mv libwidevinecdm.so /usr/lib/chromium
sudo chmod 755 /usr/lib/chromium/libwidevinecdm.so
echo 'Done!'
