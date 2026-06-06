#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_NAME="${REPO_NAME:-stock-analysis-library}"
OWNER="${OWNER:-}"
VISIBILITY="${VISIBILITY:-private}"
DESCRIPTION="${DESCRIPTION:-Codex skills for equity research, stock analysis, and market signal workflows.}"

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI is not installed. Install it first: https://cli.github.com/"
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "GitHub CLI is not authenticated. Run: gh auth login"
  exit 1
fi

if [[ -z "$OWNER" ]]; then
  OWNER="$(gh api user --jq .login)"
fi

if [[ "$VISIBILITY" != "private" && "$VISIBILITY" != "public" ]]; then
  echo "VISIBILITY must be private or public"
  exit 1
fi

cd "$ROOT_DIR"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git init
fi

if ! git rev-parse --verify HEAD >/dev/null 2>&1; then
  git add .
  git commit -m "Initial stock analysis skill library"
fi

repo_full_name="$OWNER/$REPO_NAME"

if ! gh repo view "$repo_full_name" >/dev/null 2>&1; then
  visibility_flag="--private"
  if [[ "$VISIBILITY" == "public" ]]; then
    visibility_flag="--public"
  fi
  gh repo create "$repo_full_name" "$visibility_flag" --description "$DESCRIPTION" --disable-wiki
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "git@github.com:$repo_full_name.git"
else
  git remote add origin "git@github.com:$repo_full_name.git"
fi

git branch -M main
git push -u origin main

echo "Published: https://github.com/$repo_full_name"
