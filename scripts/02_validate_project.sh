#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Projektstruktur prüfen"

require_file "README.md"
require_file "UNTERRICHT_AUFGABE.md"
require_file "logs/app.log"
require_file "scripts/common.sh"
require_file "scripts/03_analyze_logs.sh"
require_file "tests/test_log_counts.sh"

echo "Alle wichtigen Dateien sind vorhanden."
