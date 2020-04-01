#!/bin/bash
mkdir ./backup

#backup the previous configuration
mv ~/.bashrc ./backup/
mv ~/.gitignore ./backup/
mv ~/.tmux.conf ./backup/
mv ~/.bash_profile ./backup/
sudo mv /usr/share/X11/xorg.conf.d/10-monitor.conf ./backup/

#copy the new one
cp ./.bashrc ~
cp ./.gitignore ~
cp ./.tmux.conf ~
cp ./.bash_profile.conf ~
sudo cp ./10-monitor.conf /usr/share/X11/xorg.conf.d/
