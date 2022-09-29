#!/bin/zsh

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Install Brew
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

# Brew Taps
echo "Installing Brew Formulae..."
brew tap homebrew/cask-fonts

# Brew Formulae
brew install neovim
brew install tree
brew install jq
brew install gh
brew install ripgrep
brew install neofetch
brew install starship
brew install exa
brew install bat
brew install ranger
brew install sf-symbols

# Brew Casks
echo "Installing Brew Casks..."
brew install --cask alacritty
brew install --cask spotify
brew install --cask google-chrome
brew install --cask monitorcontrol
brew install --cask font-hack-nerd-font

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
mas install 497799835 #xCode

# macOS Settings
echo "Changing macOS defaults..."
defaults write com.apple.dock autohide -bool true
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.Finder AppleShowAllFiles -bool true
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Installing Fonts
git clone git@github.com:shaunsingh/SFMono-Nerd-Font-Ligaturized.git /tmp/SFMono_Nerd_Font_Ligaturized
mv /tmp/SFMono_Nerd_Font_Ligaturized/* $HOME/Library/Fonts
rm -rf /tmp/SFMono_Nerd_Font_Ligaturized/

csrutil status
echo "Installation complete...\nRun nvim +PackerSync and Restart..."

