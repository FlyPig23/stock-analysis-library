# Maintenance Guide

Use this checklist when refreshing Stock Analysis Library from local Codex skills.

## 1. Refresh Skill Folders

From the repository root:

```bash
rsync -a --delete --exclude '.venv/' --exclude '.cache/' --exclude 'reports/' --exclude '__pycache__/' --exclude '*.pyc' ~/.codex/skills/stock-deep-analyzer/ skills/stock-deep-analyzer/
rsync -a --delete ~/.codex/skills/serenity-stock-research/ skills/serenity-stock-research/
rsync -a --delete ~/.codex/skills/capital-rotation-stock-analysis/ skills/capital-rotation-stock-analysis/
rsync -a --delete ~/.codex/skills/us-political-stock-signal-analysis/ skills/us-political-stock-signal-analysis/
rsync -a --delete ~/.codex/skills/ai-supply-chain-bottleneck-hunter/ skills/ai-supply-chain-bottleneck-hunter/
```

## 2. Re-check Metadata

```bash
python3 scripts/verify-skills.py
```

Fix any mismatch between folder name and `SKILL.md` frontmatter `name`.

## 3. Keep Heavy Artifacts Out

Do not commit:

- `.venv/`
- `.cache/`
- generated `reports/`
- browser downloads
- `__pycache__/`
- local screenshots unless they are intentional documentation assets

## 4. Update README And Index

If a skill is added, removed, renamed, or substantially changed, update:

- `README.md`
- `skills.json`
- `AGENTS.md`

## 5. Validate Git Diff

```bash
git status -sb
git diff --stat
git diff -- README.md skills.json AGENTS.md
```

Review generated and binary files before committing.

## 6. Publish To GitHub

If `gh` is installed and logged in:

```bash
OWNER=<owner> VISIBILITY=private ./scripts/publish-github.sh
```

The script creates `stock-analysis-library` if it does not exist, sets `origin`, and pushes `main`.
