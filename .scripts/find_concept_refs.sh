#!/usr/bin/env bash
# Given a concept slug, lists every file/line that references it inside a "Related Concepts" section.
# Usage: ./find_concept_refs.sh <concept-slug>
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $(basename "$0") <concept-slug>" >&2
  exit 1
fi

SLUG="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

find "$ROOT_DIR" -name "*.md" -not -path "*/.obsidian/*" -not -path "*/.scripts/*" -not -path "*/.claude/*" -print0 |
  xargs -0 awk -v slug="$SLUG" '
    FNR == 1 { in_section = 0 }
    /^## Related Concepts/ { in_section=1; next }
    /^## / { in_section=0 }
    in_section && index($0, "[[" slug "|") {
      print FILENAME ": " $0
    }
  '
