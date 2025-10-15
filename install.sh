#!/bin/bash

# FullUser Installer

set -e

echo "=================================="
echo "   Installing FullUser..."
echo "=================================="
echo

# Check if running with sudo
if [ "$EUID" -ne 0 ]; then 
    echo "❌ This script needs sudo privileges."
    echo "Please run with sudo"
    exit 1
fi

# Download FullUser script
echo "📥 Downloading FullUser..."
# --- THIS IS THE CORRECTED LINE ---
curl -sSL https://raw.githubusercontent.com/mariwan001/FullUser.bash/main/FullUser.bash -o /usr/local/bin/FullUser

# Make it executable
echo "🔧 Setting permissions..."
chmod +x /usr/local/bin/FullUser

# Verify installation
if [ -f /usr/local/bin/FullUser ]; then
    echo
    echo "✅ FullUser installed successfully!"
    echo
    echo "Usage: Just type 'FullUser' in your terminal"
    echo
else
    echo "❌ Installation failed!"
    exit 1
fi
