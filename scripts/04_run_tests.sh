#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Tests ausführen"

bash tests/test_log_counts.sh

echo ""
echo "Alle Tests waren erfolgreich."
