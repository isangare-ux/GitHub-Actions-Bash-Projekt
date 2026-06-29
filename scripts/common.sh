#!/usr/bin/env bash

set -euo pipefail

print_header() {
  local title="$1"
  echo ""
  echo "========================================"
  echo "$title"
  echo "========================================"
}

require_file() {
  local file_path="$1"

  if [[ ! -f "$file_path" ]]; then
    echo "Fehler: Datei fehlt: $file_path"
    exit 1
  fi
}

count_log_level() {
  local level="$1"
  local log_file="${2:-logs/app.log}"

  grep -c "\[$level\]" "$log_file" || true
}

create_dist_folder() {
  mkdir -p dist
}

create_artifact_folder() {
  mkdir -p artifact
}
