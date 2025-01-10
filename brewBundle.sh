#!/usr/bin/env bash

# 24 hours
export HOMEBREW_AUTO_UPDATE_SECS="86400"

echo "==> running shared bundle"
brew bundle --file Brewfile

echo "==> running personal bundle"
brew bundle --file ./personal/Brewfile
echo "==> running work bundle"
brew bundle --file ./work/Brewfile

unset HOMEBREW_AUTO_UPDATE_SECS