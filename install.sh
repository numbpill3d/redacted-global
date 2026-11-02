#!/usr/bin/env bash
# Redacted — Global Theme (Plasma 6) — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_DATA_HOME:-$HOME/.local/share}/plasma/look-and-feel/scorn.redacted
rm -rf "$DST"; mkdir -p "$DST"
cp -r "$HERE"/{metadata.json,contents} "$DST"/
echo "Installed. Apply: plasma-apply-lookandfeel -a scorn.redacted   (splash only: kwriteconfig6 --file ksplashrc --group KSplash --key Theme scorn.redacted)"
