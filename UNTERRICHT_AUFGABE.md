# Unterrichtsaufgabe: Mehrere Workflows und Bash Skripte

## Ziel

Du sollst verstehen, wie GitHub Actions mit mehreren YAML Dateien arbeitet und wie eine Pipeline externe Bash Skripte ausführt.

## Aufgabe 1: Projekt hochladen

1. Erstelle ein neues GitHub Repository.
2. Lade dieses Projekt vollständig hoch.
3. Achte darauf, dass der Ordner `.github/workflows/` mit hochgeladen wird.
4. Öffne danach in GitHub den Bereich **Actions**.

## Aufgabe 2: Workflows anschauen

Öffne im Repository den Ordner:

```text
.github/workflows/
```

Schau dir diese Dateien an:

```text
01-info.yml
02-bash-ci-5-jobs.yml
03-manual-script.yml
04-nightly-check.yml
```

Beantworte:

1. Welche Datei startet automatisch bei einem Push?
2. Welche Datei enthält 5 Jobs?
3. Welche Datei kann man manuell starten?
4. Welche Datei enthält einen Zeitplan?

## Aufgabe 3: 5 Jobs verstehen

Öffne diese Datei:

```text
.github/workflows/02-bash-ci-5-jobs.yml
```

Schreibe auf, was diese 5 Jobs machen:

1. `syntax-check`
2. `project-validation`
3. `log-tests`
4. `build-report`
5. `package-project`

## Aufgabe 4: Bash Skripte verstehen

Öffne den Ordner:

```text
scripts/
```

Suche diese Zeile:

```bash
source "$(dirname "$0")/common.sh"
```

Erkläre:

1. Welche Datei wird hier eingelesen?
2. Warum ist das sinnvoll?
3. Was würde passieren, wenn die Datei `common.sh` fehlt?

## Aufgabe 5: Pipeline absichtlich kaputt machen

Öffne die Datei:

```text
logs/app.log
```

Entferne eine Zeile mit `[ERROR]`.

Dann committe und pushe die Änderung.

Beobachte danach die Pipeline in GitHub Actions.

Frage:

Warum schlägt der Test jetzt fehl?

## Zusatzaufgabe

Ändere den Workflow `03-manual-script.yml` so, dass ein anderer Standardname verwendet wird.

Starte den Workflow danach manuell über GitHub Actions.
