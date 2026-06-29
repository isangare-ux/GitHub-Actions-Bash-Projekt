#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Projekt paketieren"

create_artifact_folder

if [[ ! -f "dist/report.md" ]]; then
  bash scripts/05_build_report.sh
fi

tar -czf artifact/log-analyzer-package.tar.gz README.md UNTERRICHT_AUFGABE.md logs scripts tests dist

echo "Paket wurde erstellt:"
echo "artifact/log-analyzer-package.tar.gz"
