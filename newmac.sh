#!/bin/bash

# Disable Recent Applications in the Dock
defaults write com.apple.dock show-recents -bool false

# Set Dock to auto-hide
defaults write com.apple.dock autohide -bool true

# Set Dock to have no delay when auto-hiding
defaults write com.apple.dock autohide-delay -float 0

# Keep smooth animation when showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Move the Dock to the left side
defaults write com.apple.dock orientation -string "left"

# Prevent the menubar from auto-hiding in fullscreen mode
defaults write NSGlobalDomain _HIHideMenuBar -bool false



defaults write com.apple.finder ShowPathbar -bool true

# Show status bar in Finder window
defaults write com.apple.finder ShowStatusBar -bool true

# Show hard drives and connected disks in Finder sidebar
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true


killall Finder
# Apply the changes
killall Dock
