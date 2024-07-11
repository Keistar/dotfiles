#!/bin/bash
cmd="nvim"

target_1="${HOME}/.config/${cmd}"
target_2="${HOME}/.local/share/${cmd}"
target_3="${HOME}/.local/state/${cmd}"
target_4="${HOME}/.cache/${cmd}"
base="$(pwd)/nvim_p"

rm -rf ${target_1} ${target_2} ${target_3} ${target_4}
ln -s ${base} ${target_1}
