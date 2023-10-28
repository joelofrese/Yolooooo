#!/bin/bash

# Script Name: yolosetup
# Author: Ryan Sundermeyer
# Date: 10/26/2023
# Description: Sets up required directories, applications, and files to use yoloscript.sh (AI automation script)

# Make this do all the setup shit im yolohelp for you
# meant for a computer with none of the directories setup whatsoever

#PATH="$(pwd)"  # path to the new main folder
#echo "$PATH"

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Python 3 is not installed. Installing Python 3..."
    sudo apt update
    sudo apt install -y python3
    echo "Python 3 has been installed."
else
    echo "Python 3 is already installed."
fi

# Check if Pip for Python 3 is installed
if ! command -v pip3 &> /dev/null; then
    echo "Pip for Python 3 is not installed. Installing Pip for Python 3..."
    sudo apt update
    sudo apt install -y python3-pip
    echo "Pip for Python 3 has been installed."
else
    echo "Pip for Python 3 is already installed."
fi

# modifies yolohelp.txt to show a check mark next to where it says "PREREQUISITES"
new_yolohelp="✅"
new_yolohelp+=$(cat yolohelp2.txt) # TODO: fix all yolohelp2.txt files to yolohelp.txt when script is done

echo "$new_yolohelp" > yolohelp2.txt

# git clone vision repo with everything in it
xdg-open yolohelp2.txt

# python3 make_dataset.py -folder "$PATH" - FIXME not sure if this is right with the name
