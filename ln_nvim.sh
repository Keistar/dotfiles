#!/bin/bash

target="${HOME}/.config/nvim"
base="$(pwd)/nvim"

rm -rf ${target}
ln -s ${base} ${target}
