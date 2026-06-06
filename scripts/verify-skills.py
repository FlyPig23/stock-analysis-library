#!/usr/bin/env python3
from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SKILLS_DIR = ROOT / "skills"
FRONTMATTER = re.compile(r"^---\n(.*?)\n---\n", re.DOTALL)


def parse_frontmatter(path: Path) -> dict[str, str]:
    text = path.read_text(encoding="utf-8")
    match = FRONTMATTER.match(text)
    if not match:
        raise ValueError("missing YAML frontmatter")

    fields: dict[str, str] = {}
    for raw_line in match.group(1).splitlines():
        if not raw_line.strip() or raw_line.startswith(" "):
            continue
        key, sep, value = raw_line.partition(":")
        if sep:
            fields[key.strip()] = value.strip().strip("\"'")
    return fields


def main() -> int:
    failures: list[str] = []
    skill_dirs = sorted(p for p in SKILLS_DIR.iterdir() if p.is_dir())

    if not skill_dirs:
        failures.append("no skill directories found")

    for skill_dir in skill_dirs:
        skill_file = skill_dir / "SKILL.md"
        if not skill_file.exists():
            failures.append(f"{skill_dir.name}: missing SKILL.md")
            continue

        try:
            fields = parse_frontmatter(skill_file)
        except Exception as exc:
            failures.append(f"{skill_dir.name}: {exc}")
            continue

        name = fields.get("name", "")
        description = fields.get("description", "")

        if name != skill_dir.name:
            failures.append(
                f"{skill_dir.name}: frontmatter name {name!r} does not match directory"
            )
        if not description:
            failures.append(f"{skill_dir.name}: missing description")
        if len(description) > 1200:
            failures.append(f"{skill_dir.name}: description is unusually long")

    if failures:
        print("Skill verification failed:")
        for failure in failures:
            print(f"- {failure}")
        return 1

    print(f"Verified {len(skill_dirs)} skills.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
