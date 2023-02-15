#!/usr/bin/env bash

echo "==> running shared bundle"
brew bundle --file Brewfile

if [ "$IS_PERSONAL_DEVICE" = "true" ]; then
    echo "==> running personal bundle"
    brew bundle --file ./personal/Brewfile
else
    echo "==> running work bundle"
    brew bundle --file ./work/Brewfile
fi