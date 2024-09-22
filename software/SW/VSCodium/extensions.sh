#!/bin/bash

# List of extensions
extensions=(
    "github.vscode-pull-request-github"
    "knisterpeter.vscode-github"
    "mechatroner.rainbow-csv"
    "ms-azuretools.vscode-docker"
    "ms-python.debugpy"
    "ms-python.python"
    "ms-toolsai.jupyter"
    "ms-toolsai.jupyter-keymap"
    "ms-toolsai.jupyter-renderers"
    "ms-toolsai.vscode-jupyter-cell-tags"
    "ms-toolsai.vscode-jupyter-slideshow"
    "pkief.material-icon-theme"
    "redhat.vscode-yaml"
    "shyykoserhiy.git-autoconfig"
    "tomoki1207.pdf"
)

# Loop through and install each extension
for extension in "${extensions[@]}"; do
    codium --install-extension "$extension"
done
