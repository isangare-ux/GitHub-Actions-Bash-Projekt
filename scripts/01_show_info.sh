#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Projektinformationen"

echo "Aktueller Ordner:"
pwd

echo ""
echo "Bash Version:"
bash --version | head -n 1

echo ""
echo "Dateien im Projekt:"
find . -maxdepth 3 -type f | sort
