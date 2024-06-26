#!/bin/bash

target="${HOME}/.config/nvim"
base="$(pwd)/nvim_p"

rm -rf ${target}
ln -s ${base} ${target}
