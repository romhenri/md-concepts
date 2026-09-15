#!/usr/bin/env bash
# Counts how many times each concept is referenced inside any "Related Concepts" section.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

find "$ROOT_DIR" -name "*.md" -not -path "*/.obsidian/*" -not -path "*/.scripts/*" -not -path "*/.claude/*" -print0 |
  xargs -0 awk '
    /^## Related Concepts/ { in_section=1; next }
    /^## / { in_section=0 }
    in_section { print }
  ' |
  grep -oE '\[\[[^]|]+\|' |
  sed -E 's/^\[\[//; s/\|$//' |
  sort | uniq -c | sort -rn
