#!/bin/bash

time_var=$(date +"%F_%T")
directory_var="./backups/${time_var}/"

mkdir -p ${directory_var}

#backup the previous configuration
mv ~/.bashrc ${directory_var}
mv ~/.gitignore ${directory_var}
mv ~/.tmux.conf ${directory_var}
mv ~/.bash_profile ${directory_var}
#sudo mv /usr/share/X11/xorg.conf.d/10-monitor.conf ./backup/

#copy the new one
cp ./.bashrc ~
cp ./.gitignore ~
cp ./.tmux.conf ~
cp ./.bash_profile ~
#sudo cp ./10-monitor.conf /usr/share/X11/xorg.conf.d/
