#!/usr/bin/env bash
# Usage: changelog_notes.sh <version>
# Prints the body of the "## [<version>]" section from CHANGELOG.md.
set -euo pipefail
v="$1"
awk -v v="$v" '
  index($0, "## [" v "]") == 1 { found=1; next }
  found && /^## \[/ { exit }
  found { print }
' CHANGELOG.md
