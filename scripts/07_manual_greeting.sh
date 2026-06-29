#!/usr/bin/env bash

source "$(dirname "$0")/common.sh"

print_header "Manuelles Skript ausführen"

create_dist_folder

student_name="${STUDENT_NAME:-Teilnehmer}"

cat > dist/greeting.txt <<EOF
Hallo $student_name,

dieser Text wurde durch ein Bash Skript in GitHub Actions erstellt.

Das zeigt:
- Ein Workflow kann manuell gestartet werden.
- Ein YAML Workflow kann Variablen an ein Bash Skript übergeben.
- Ein Bash Skript kann Dateien erzeugen.
EOF

cat dist/greeting.txt
