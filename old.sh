#!/bin/bash

# Create the directory if it doesn't exist, i used -p for this
echo "Creating the directory if it doesn't already exist...🍌"
mkdir -pv ~/.apps_and_softwares

# Extract the files to the directory
echo "Extracting the Telegram files...🍌🍌🍌"
tar -xf tsetup.*.tar.xz -vC ~/.apps_and_softwares
echo "Telegram File has been extracted successfully🍌"

# Make sure the Telegram executable is marked as executable
echo "Setting executable permissions for Telegram...🍌"
chmod +x ~/.apps_and_softwares/Telegram/Telegram

# Run the Telegram application in the background
echo "Launching Telegram...🍌🍌🍌"
~/.apps_and_softwares/Telegram/Telegram &
disown

# Notify that Telegram is running
echo "Telegram has been installed successfully 🍌🍌🍌"
echo "Telegram is now running in the background. You can close this terminal. - Rana Universe 🍌🍌🍌"

