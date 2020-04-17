#!/usr/bin/env bash

set -eo pipefail

declare old_file_suffix="pre-dotfiles"
declare dest_dir="$HOME"
declare dotfiles_dir

dotfiles_dir="$(pwd)"

backup_file() {
  local file="$1"
  mv -f "$file" "${file}.${old_file_suffix}" 2>/dev/null || true
}

link_bash_profile() {
  local bash_profile=".bash_profile"
  local bash_profile_dest="${dest_dir}/${bash_profile}"

  backup_file "$bash_profile_dest"
  rm -f "$bash_profile_dest"
  ln -sv "${dotfiles_dir}/${bash_profile}" "$bash_profile_dest"
}

link_fzf() {
  local fzf_bash=".fzf.bash"
  local fzf_zsh=".fzf.zsh"
  local fzf_bash_dest="${dest_dir}/${fzf_bash}"
  local fzf_zsh_dest="${dest_dir}/${fzf_zsh}"

  backup_file "$fzf_bash_dest"
  backup_file "$fzf_zsh_dest"
  rm -f "$fzf_bash_dest" "$fzf_zsh_dest"
  ln -sv "${dotfiles_dir}/${fzf_bash}" "$fzf_bash_dest"
  ln -sv "${dotfiles_dir}/${fzf_zsh}" "$fzf_zsh_dest"
}

link_gemrc() {
  local gemrc=".gemrc"
  local gemrc_dest="${dest_dir}/${gemrc}"

  backup_file "$gemrc_dest"
  rm -f "$gemrc_dest"
  ln -sv "${dotfiles_dir}/${gemrc}" "$gemrc_dest"
}

link_gitconfig() {
  local gitconfig=".gitconfig"
  local gitconfig_dest="${dest_dir}/${gitconfig}"

  backup_file "$gitconfig_dest"
  rm -f "$gitconfig_dest"
  ln -sv "${dotfiles_dir}/${gitconfig}" "$gitconfig_dest"
}

link_gitignore_global() {
  local gitignore_global=".gitignore_global"
  local gitignore_global_dest="${dest_dir}/${gitignore_global}"

  backup_file "$gitignore_global_dest"
  rm -f "$gitignore_global_dest"
  ln -sv "${dotfiles_dir}/${gitignore_global}" "$gitignore_global_dest"
}

link_my_zshrc() {
  local my_zshrc=".my-zshrc"
  local my_zshrc_dest="${dest_dir}/${my_zshrc}"

  backup_file "$my_zshrc_dest"
  rm -f "$my_zshrc_dest"
  ln -sv "${dotfiles_dir}/${my_zshrc}" "$my_zshrc_dest"
}

link_pip_dir() {
  local pip_dir=".pip"
  local pip_dir_dest="${dest_dir}/${pip_dir}"

  backup_file "$pip_dir_dest"
  rm -Rf "$pip_dir_dest"
  ln -sv "${dotfiles_dir}/${pip_dir}" "$pip_dir_dest"
}

link_rvmrc() {
  local rvmrc=".rvmrc"
  local rvmrc_dest="${dest_dir}/${rvmrc}"

  backup_file "$rvmrc_dest"
  rm -f "$rvmrc_dest"
  ln -sv "${dotfiles_dir}/${rvmrc}" "$rvmrc_dest"
}

link_shell_aliases() {
  local shell_aliases=".shell_aliases"
  local shell_aliases_dest="${dest_dir}/${shell_aliases}"

  backup_file "$shell_aliases_dest"
  rm -f "$shell_aliases_dest"
  ln -sv "${dotfiles_dir}/${shell_aliases}" "$shell_aliases_dest"
}

link_skylight() {
  local skylight=".skylight"
  local skylight_dest="${dest_dir}/${skylight}"

  backup_file "$skylight_dest"
  rm -f "$skylight_dest"
  ln -sv "${dotfiles_dir}/${skylight}" "$skylight_dest"
}

link_sqliterc() {
  local sqliterc=".sqliterc"
  local sqliterc_dest="${dest_dir}/${sqliterc}"

  backup_file "$sqliterc_dest"
  rm -f "$sqliterc_dest"
  ln -sv "${dotfiles_dir}/${sqliterc}" "$sqliterc_dest"
}

link_tmux() {
  local tmux_conf=".tmux.conf"
  local tmux_conf_dest="${dest_dir}/${tmux_conf}"
  local tmate_conf=".tmate.conf"
  local tmate_conf_dest="${dest_dir}/${tmate_conf}"

  backup_file "$tmux_conf_dest"
  backup_file "$tmate_conf_dest"

  rm -f "$tmux_conf_dest" "$tmate_conf_dest"

  ln -sv "${dotfiles_dir}/${tmux_conf}" "$tmux_conf_dest"
  ln -sv ${tmux_conf} "$tmate_conf_dest"
}

main() {
  link_bash_profile
  link_fzf
  link_gemrc
  link_gitconfig
  link_gitignore_global
  link_my_zshrc
  link_pip_dir
  link_rvmrc
  link_shell_aliases
  link_skylight
  link_sqliterc
  link_tmux
}

main
