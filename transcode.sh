#!/bin/bash

# see http://www.gnu.org/s/bash/manual/html_node/The-Set-Builtin.html
set -o nounset  # exit on unitialized vars
set -o errexit  # exit on [ $? != 0]
set -o pipefail # exit on pipeline errors

TRANSCODEDIR="${1:-/data}"

# Set the default HandBrake encoding preset.
# You can customize this preset by changing the value below.
# To view available presets, use the command: "HandBrakeCLI --preset-list"
HANDBRAKE_PRESET="${HANDBRAKE_PRESET:-General/HQ 1080p30 Surround}"

find "$TRANSCODEDIR"/* -type f -name "*.mkv" -exec bash -c 'HandBrakeCLI -i "$1" -o "${1%\.*}.mp4" --preset="$2" --all-audio' _ {} "$HANDBRAKE_PRESET" \;
