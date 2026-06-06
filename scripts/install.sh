#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
DEST_DIR="$CODEX_HOME/skills"

mkdir -p "$DEST_DIR"

for skill_dir in "$ROOT_DIR"/skills/*; do
  [[ -d "$skill_dir" ]] || continue
  skill_name="$(basename "$skill_dir")"
  echo "Installing $skill_name -> $DEST_DIR/$skill_name"
  rsync -a --delete \
    --exclude '.venv/' \
    --exclude '.cache/' \
    --exclude 'reports/' \
    --exclude '__pycache__/' \
    --exclude '*.pyc' \
    "$skill_dir/" "$DEST_DIR/$skill_name/"
done

echo "Done. Restart Codex to pick up installed skills."
