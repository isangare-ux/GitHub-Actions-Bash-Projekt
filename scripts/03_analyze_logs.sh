#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Log Datei analysieren"

require_file "logs/app.log"
create_dist_folder

info_count="$(count_log_level "INFO" "logs/app.log")"
warn_count="$(count_log_level "WARN" "logs/app.log")"
error_count="$(count_log_level "ERROR" "logs/app.log")"
total_count="$(wc -l < logs/app.log | tr -d ' ')"

cat > dist/log-summary.txt <<EOF
INFO=$info_count
WARN=$warn_count
ERROR=$error_count
TOTAL=$total_count
EOF

echo "INFO Meldungen: $info_count"
echo "WARN Meldungen: $warn_count"
echo "ERROR Meldungen: $error_count"
echo "Gesamtzeilen: $total_count"

echo ""
echo "Zusammenfassung wurde erstellt:"
echo "dist/log-summary.txt"
