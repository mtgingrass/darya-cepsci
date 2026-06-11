#!/bin/bash
set -e

# Download and install Quarto for Linux (Netlify runs Ubuntu)
wget -q "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb"
dpkg -i "quarto-${QUARTO_VERSION}-linux-amd64.deb"

quarto render
