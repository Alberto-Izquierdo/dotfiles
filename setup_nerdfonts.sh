#!/bin/bash
pushd /tmp
echo "Cloning nerd-fonts repository..."
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
echo "Installing nerd-fonts ..."
./install.sh
cd ..
rm -rf nerd-fonts
echo "Nerd-fonts installed!"
popd
