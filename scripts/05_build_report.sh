#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Report bauen"

bash scripts/03_analyze_logs.sh

require_file "dist/log-summary.txt"

info_count="$(grep '^INFO=' dist/log-summary.txt | cut -d '=' -f 2)"
warn_count="$(grep '^WARN=' dist/log-summary.txt | cut -d '=' -f 2)"
error_count="$(grep '^ERROR=' dist/log-summary.txt | cut -d '=' -f 2)"
total_count="$(grep '^TOTAL=' dist/log-summary.txt | cut -d '=' -f 2)"

cat > dist/report.md <<EOF
# Log Report

Dieser Report wurde automatisch durch ein Bash Skript erstellt.

## Ergebnis

| Typ | Anzahl |
|---|---:|
| INFO | $info_count |
| WARN | $warn_count |
| ERROR | $error_count |
| Gesamt | $total_count |

## Bewertung

Wenn ERROR Meldungen vorhanden sind, sollte der Log genauer geprüft werden.
EOF

echo "Report wurde erstellt:"
echo "dist/report.md"
