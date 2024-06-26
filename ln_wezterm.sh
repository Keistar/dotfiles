#!/bin/bash

target="${HOME}/.config/wezterm"
base="$(pwd)/wezterm"

rm -rf ${target}
ln -s ${base} ${target}
