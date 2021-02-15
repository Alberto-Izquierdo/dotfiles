#!/bin/bash

time_var=$(date +"%F_%T")
backup_directory="./backups/${time_var}/"

mkdir -p ${backup_directory}

#backup the previous configuration
cp ~/.bashrc ${backup_directory}
cp ~/.gitignore ${backup_directory}
cp ~/.tmux.conf ${backup_directory}
cp ~/.bash_profile ${backup_directory}
cp ~/.config/i3/config ${backup_directory}/i3_config
#sudo mv /usr/share/X11/xorg.conf.d/10-monitor.conf ./backup/

#copy the new one
cp ./.bashrc ~
cp ./.gitignore ~
cp ./.tmux.conf ~
cp ./.bash_profile ~
cp -r .config ~
#sudo cp ./10-monitor.conf /usr/share/X11/xorg.conf.d/
