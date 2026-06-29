# GitHub Actions Bash Projekt: Log Analyzer

Dieses Projekt ist für den Unterricht gedacht.

Themen:

- Mehrere GitHub Actions Workflow Dateien
- Mehrere Jobs in einer Pipeline
- `.sh` Dateien aus GitHub Actions heraus ausführen
- Eine gemeinsame `common.sh` Datei in andere Bash Skripte einlesen
- Einfache Prüfung, Test, Build und Paketierung

## Projektidee

Das Projekt enthält eine kleine Log Datei unter:

```text
logs/app.log
```

Die Bash Skripte analysieren diese Log Datei und zählen:

- INFO Meldungen
- WARN Meldungen
- ERROR Meldungen

Danach wird automatisch ein kleiner Report gebaut.

## Ordnerstruktur

```text
github-actions-bash-log-analyzer/
├── .github/
│   └── workflows/
│       ├── 01-info.yml
│       ├── 02-bash-ci-5-jobs.yml
│       ├── 03-manual-script.yml
│       └── 04-nightly-check.yml
├── logs/
│   └── app.log
├── scripts/
│   ├── common.sh
│   ├── 01_show_info.sh
│   ├── 02_validate_project.sh
│   ├── 03_analyze_logs.sh
│   ├── 04_run_tests.sh
│   ├── 05_build_report.sh
│   ├── 06_package_project.sh
│   └── 07_manual_greeting.sh
├── tests/
│   └── test_log_counts.sh
├── UNTERRICHT_AUFGABE.md
└── README.md
```

## Lokal ausführen

```bash
chmod +x scripts/*.sh tests/*.sh
bash scripts/01_show_info.sh
bash scripts/02_validate_project.sh
bash scripts/04_run_tests.sh
bash scripts/05_build_report.sh
```

## Bei GitHub hochladen

```bash
git init
git add .
git commit -m "Bash Projekt mit mehreren GitHub Actions Workflows"
git branch -M main
git remote add origin <DEIN_REPOSITORY_LINK>
git push -u origin main
```

Danach in GitHub auf **Actions** klicken.

## Wichtige Punkte für den Unterricht

GitHub Actions liest Workflow Dateien aus:

```text
.github/workflows/
```

Jede YAML Datei ist ein eigener Workflow.

In diesem Projekt gibt es:

- `01-info.yml`: einfacher Info Workflow
- `02-bash-ci-5-jobs.yml`: CI Workflow mit 5 Jobs
- `03-manual-script.yml`: manuell startbarer Workflow
- `04-nightly-check.yml`: geplanter Workflow

Eine `.sh` Datei wird im Workflow so gestartet:

```yaml
run: bash scripts/02_validate_project.sh
```

Eine andere Bash Datei wird in einem Skript so eingelesen:

```bash
source "$(dirname "$0")/common.sh"
```
