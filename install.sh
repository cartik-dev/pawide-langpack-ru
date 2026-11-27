#!/usr/bin/env bash
# Installs the Russian language pack for Paw IDE (per-user).
set -euo pipefail
DEST="${XDG_DATA_HOME:-$HOME/.local/share}/Paw/PawIDE/plugins/langpack-ru"
mkdir -p "$DEST"
cp "$(dirname "$0")/plugin.json" "$DEST/"
cp "$(dirname "$0")/pawide_ru.qm" "$DEST/"
echo "Installed to $DEST"
echo "Restart Paw IDE to apply the Russian interface."
