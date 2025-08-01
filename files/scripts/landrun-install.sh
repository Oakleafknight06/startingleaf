#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

git clone https://github.com/zouuup/landrun.git /tmp/landrun-build/
cd /tmp/landrun-build/landrun/
go build -o landrun cmd/landrun/main.go
cp landrun /usr/bin/
