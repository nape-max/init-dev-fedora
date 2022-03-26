#!/bin/bash

brightnessctl s 100%

sudo dnf -y copr enable skidnik/termite && \
sudo dnf -y install termite

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && \
sudo dnf -y install telegram

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && \
sudo dnf -y install code

sudo dnf -y install docker docker-compose chromium git xclip elixir erlang zsh wget curl && \
sudo dnf -y upgrade

cp ./config ~/.config/i3/

echo "Please enter your git email:"
read gitEmail

echo "Please enter your git username:"
read gitUsername

git config --global user.name "$gitUsername"
git config --global user.email "$gitEmail"

ssh-keygen -t ed25519 -C "$gitEmail"

sudo usermod -s $(which zsh) $USER

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
