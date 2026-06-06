# Agent Guide

This repository is a Codex skill library for stock analysis.

## Working Rules

- Treat all outputs as research, not personal financial advice.
- Keep generated reports, caches, virtual environments, and downloaded browser binaries out of git.
- When changing a skill, preserve its directory name and `SKILL.md` frontmatter `name`.
- Run `python3 scripts/verify-skills.py` before committing.
- Use primary sources and current data for market facts whenever a skill is used for live analysis.

## Skill Routing

- Use `stock-deep-analyzer` for single-stock deep reports, valuation, DCF, comps, and HTML output.
- Use `serenity-stock-research` for Serenity-style chokepoint and Bayesian thesis updates.
- Use `capital-rotation-stock-analysis` for sector/theme rotation and watchlist movement.
- Use `us-political-stock-signal-analysis` for U.S. political disclosure signals.
- Use `ai-supply-chain-bottleneck-hunter` for AI/semiconductor/photonics stack bottleneck mapping.

## Validation

```bash
python3 scripts/verify-skills.py
```
