#!/bin/bash
set -e

# Download and extract Quarto outside project dir (no install/root required)
wget -q -P /tmp "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"
tar -xzf "/tmp/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" -C /tmp
export PATH="/tmp/quarto-${QUARTO_VERSION}/bin:$PATH"

quarto render
