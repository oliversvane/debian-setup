#!/bin/bash

# Path to the new settings.json file (update this with your actual path)
new_settings_file="./settings.json"

# VSCode settings directory (for Linux/macOS, adjust accordingly for Windows)
vscode_settings_dir="$HOME/.config/VSCodium/User"

# Backup the existing settings file
if [ -f "$vscode_settings_dir/settings.json" ]; then
    cp "$vscode_settings_dir/settings.json" "$vscode_settings_dir/settings.json.backup"
    echo "Existing settings.json backed up to settings.json.backup"
fi

# Copy the new settings.json file to the VSCode settings directory
cp "$new_settings_file" "$vscode_settings_dir/settings.json"

echo "VSCode settings updated with the new settings.json file."
