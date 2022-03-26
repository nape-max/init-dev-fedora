#!/bin/bash

brightnessctl s 100%

sudo dnf -y copr enable skidnik/termite && \
sudo dnf -y install termite

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && \
sudo dnf -y install telegram

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && \
dnf check-update && \
sudo dnf install code

sudo dnf -y install docker docker-compose chromium git && \
sudo dnf -y upgrade
