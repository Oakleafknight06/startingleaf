#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

mkdir /tmp/landrun-build/
cd /tmp/landrun-build/
git clone https://github.com/zouuup/landrun.git
cd landrun/
go build -o landrun cmd/landrun/main.go
cp landrun /usr/bin/
