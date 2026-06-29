#!/usr/bin/env bash

source "$(dirname "$0")/../scripts/common.sh"

print_header "Test: Log Zählung prüfen"

require_file "logs/app.log"

info_count="$(count_log_level "INFO" "logs/app.log")"
warn_count="$(count_log_level "WARN" "logs/app.log")"
error_count="$(count_log_level "ERROR" "logs/app.log")"

if [[ "$info_count" -ne 4 ]]; then
  echo "Test fehlgeschlagen: Erwartet wurden 4 INFO Meldungen, gefunden wurden $info_count."
  exit 1
fi

if [[ "$warn_count" -ne 3 ]]; then
  echo "Test fehlgeschlagen: Erwartet wurden 3 WARN Meldungen, gefunden wurden $warn_count."
  exit 1
fi

if [[ "$error_count" -ne 2 ]]; then
  echo "Test fehlgeschlagen: Erwartet wurden 2 ERROR Meldungen, gefunden wurden $error_count."
  exit 1
fi

echo "Log Zählung ist korrekt."
