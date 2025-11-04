#!/bin/bash

# see http://www.gnu.org/s/bash/manual/html_node/The-Set-Builtin.html
set -o nounset  # exit on unitialized vars
set -o errexit  # exit on [ $? != 0]
set -o pipefail # exit on pipeline errors

TRANSCODEDIR="${1:-/data}"

# Change the preset if you like (see options: "HandBrakeCLI --preset-list")
find "$TRANSCODEDIR"/* -type f -name "*.mkv" -exec bash -c 'HandBrakeCLI -i "$1" -o "${1%\.*}".mp4 --preset="General/HQ 1080p30 Surround" --all-audio' __ {} \;
