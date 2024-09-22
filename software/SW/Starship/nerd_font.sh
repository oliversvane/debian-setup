#!/bin/bash

# Font URL
font_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip"

# Temporary directory to download and extract the font
tmp_dir="/tmp/nerd-font"
font_dir="$HOME/.local/share/fonts"

# Create the temporary and font directories if they don't exist
mkdir -p "$tmp_dir"
mkdir -p "$font_dir"

# Download the font zip file
curl -L "$font_url" -o "$tmp_dir/0xProto.zip"

# Extract the zip file to the temporary directory
unzip "$tmp_dir/0xProto.zip" -d "$tmp_dir"

# Copy the fonts to the local fonts directory
cp -r "$tmp_dir"/*.ttf "$font_dir/"

# Refresh the font cache
fc-cache -fv

# Clean up the temporary directory
rm -rf "$tmp_dir"

echo "Nerd Font installed successfully!"
