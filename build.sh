#!/usr/bin/env bash
# Generira sve PNG rastere iz SVG izvora.
# Zahtijeva: librsvg  (macOS: brew install librsvg)
set -euo pipefail
cd "$(dirname "$0")"

SIZE="${1:-2048}"   # veličina u px (default 2048); npr. ./build.sh 1024

for name in logo_square logo_square_dark token_icon mono_square; do
  rsvg-convert -w "$SIZE" -h "$SIZE" \
    "airkuna_${name}.svg" \
    -o "airkuna_${name}.png"
  echo "✓ airkuna_${name}.png  (${SIZE}×${SIZE})"
done
