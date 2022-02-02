#!/usr/bin/env bash

set -eo pipefail

declare dest_dir="$HOME"
declare dotfiles_dir

dotfiles_dir="$(pwd)"

link_file() {
  local file_origin="$1"
  local file_dest
  file_dest="${dest_dir}/.$(basename "$file_origin")"

  rm -f "$file_dest"
  ln -sv "$file_origin" "$file_dest"
}

main() {
  for file in "${dotfiles_dir}/dotfiles"/*; do
    link_file "$file"
  done
}

main
