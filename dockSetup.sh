#!/usr/bin/env bash

defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
defaults write com.apple.dock size-immutable -bool yes
# defaults write com.apple.dock size-immutable -bool no

killall Dock
