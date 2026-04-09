#!/usr/bin/env bash
set -euo pipefail

# =========================
# CONFIG
# =========================
VOICE="Samantha"
RATE="165"

IN_DIR="txt"
AIFF_DIR="aiff"

VOICE_SAFE="${VOICE// /_}"

# =========================
# SETUP
# =========================
mkdir -p "$AIFF_DIR"
shopt -s nullglob

# =========================
# TXT → AIFF
# =========================
echo "🎙️  Generating AIFF files..."
for infile in "$IN_DIR"/*.txt; do
  base="$(basename "$infile" .txt)"
  outfile="$AIFF_DIR/${base}__${VOICE_SAFE}.aiff"

  if [[ -f "$outfile" ]]; then
    echo "⚠️  Skipping existing $outfile"
    continue
  fi

  echo "→ $infile  →  $outfile"
  say -v "$VOICE" -r "$RATE" -f "$infile" -o "$outfile"
done

echo "✅ Done."
echo "AIFF files: ./$AIFF_DIR/"
