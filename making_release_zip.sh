
# This zip file will be in the top level folder so in extraction time i need to careful


# Remember, to make the zip i need to change the below two verion number and run this script to get the zip and use it in the release in my repo.

# Make sure there is no more zip file before running the script


My_VERSION="v1.0.0"
TG_VERSION="6.4.2"

repo_name=$(basename "$(pwd)")
zip_name="${repo_name}_${My_VERSION}_telegram_desktop_${TG_VERSION}.zip"

# Create the zip file, excluding .git directory and its contents
zip -r "$zip_name" . -x "*.git*" ".git/*"

echo "This zip file is made for the release of this repo ($repo_name), version: $My_VERSION, with Telegram Version: $TG_VERSION."
echo "Created zip: $zip_name"

