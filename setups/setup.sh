#!/bin/bash

# Setup Git
sudo apt update
sudo apt install -y git
git --version
export GIT_PYTHON_REFRESH=quiet

# Setup Keyring
sudo apt install gnome-keyring seahorse -y
systemctl --user enable --now gnome-keyring-daemon.service
sudo systemctl enable gdm
reboot
