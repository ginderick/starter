#!/bin/bash

# Function to install
install_lazyvim() {
  git clone https://github.com/ginderick/starter ~/.config/nvim
}

# Function to check if Linux is Debian-based
check_debian_based() {
  if [[ -f "/etc/debian_version" ]]; then
    echo "The Linux distribution is Debian-based."
    check_dependencies
  else
    echo "The Linux distribution is not Debian-based."
  fi
}

# Function to check if Neovim and Git are installed
check_dependencies() {
  check_neovim
  check_git

}
check_neovim() {
  # Check if neovim is installed
  if command -v nvim &>/dev/null; then
    echo "Neovim is installed."
  else
    echo "Neovim is not installed. Installing Neovim..."
    sudo apt update && sudo apt install -y neovim
  fi
}

check_git() {
  # Check if git is installed
  if command -v git &>/dev/null; then
    echo "Git is installed."
  else
    echo "Git is not installed. Installing Git..."
    sudo apt update && sudo apt install -y git
  fi
}

# Detect the operating system
if [[ "$(uname)" == "Linux" ]]; then
  echo "The operating system is Linux."
  check_debian_based
  install_lazyvim
elif [[ "$(uname)" == "Darwin" ]]; then
  echo "The operating system is macOS."\else
  echo "Unknown operating system."
fi
