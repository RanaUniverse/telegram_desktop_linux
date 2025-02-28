#!/bin/bash

# Create the directory if it doesn't exist, I used -p for this
echo "Creating the directory if it doesn't already exist...🍌"
mkdir -pv ~/.apps_and_softwares

# Clear old Telegram installation files but leave other contents intact
echo "Checking old Telegram Files inside .apps_and_folders"
if [ -d ~/.apps_and_softwares/Telegram ]; then
    rm -rf ~/.apps_and_softwares/Telegram
    echo "Old Telegram files removed🍌"
else
    echo "No previous Telegram files found, Fresh Installation is Proceeding...🍌"
fi

# Extract the files to the directory
echo "Extracting the Telegram files...🍌🍌🍌"
tar -xf tsetup.*.tar.xz -vC ~/.apps_and_softwares
echo "Telegram files have been extracted successfully 🍌"

# Make sure the Telegram executable is marked as executable
echo "Setting executable permissions for Telegram...🍌"
chmod +x ~/.apps_and_softwares/Telegram/Telegram

# Verify that the Telegram executable exists
if [ -f ~/.apps_and_softwares/Telegram/Telegram ]; then
    echo "Telegram executable found, launching Telegram...🍌🍌🍌"
else
    echo "Error: Telegram executable not found! Aborting. 🍌"
    exit 1
fi

# Run the Telegram application in the background
~/.apps_and_softwares/Telegram/Telegram &
disown

# Notify that Telegram is running
echo "Telegram has been installed successfully 🍌🍌🍌"
echo "Telegram is now running in the background. You can close this terminal. - Rana Universe 🍌🍌🍌"

