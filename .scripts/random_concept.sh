#!/usr/bin/env bash
# Picks a random existing concept file.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

find "$ROOT_DIR" -name "*.md" -not -path "*/.obsidian/*" -not -path "*/.scripts/*" -not -path "*/.claude/*" -not -name "README.md" -not -name "CLAUDE.md" |
  sort -R | head -n 1
