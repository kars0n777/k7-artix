#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in k7-artix Folder."
    echo "Please use ./archtitus.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the k7-artix Project"
git clone https://github.com/kars0n777/k7-artix

echo "Executing k7-artix Script"

cd $HOME/k7-artix

exec ./archtitus.sh
