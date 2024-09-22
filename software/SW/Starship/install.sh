#!/bin/bash
curl -sS https://starship.rs/install.sh | sh

line_to_add='eval "$(starship init bash)"'
if ! grep -qF "$line_to_add" ~/.bashrc; then
    echo "$line_to_add" >> ~/.bashrc
    echo "Line added to ~/.bashrc"
else
    echo "Line already exists in ~/.bashrc"
fi

source_file="starship.toml"
destination_dir="/home/olol/.config"
if [ ! -d "$destination_dir" ]; then
    mkdir -p "$destination_dir"
    echo "Directory $destination_dir created."
fi
cp "$source_file" "$destination_dir/"
if [ -f "$destination_dir/$(basename $source_file)" ]; then
    echo "File $source_file copied to $destination_dir."
else
    echo "Error: File copy failed."
fi


