#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  scripts/new_note.sh <type> <slug> <title> [date]

Types:
  case-studies | videos | prompts

Examples:
  scripts/new_note.sh case-studies gergely-shoutout "Shoutout 대체 사례" 2026-01-29
  scripts/new_note.sh videos weekdaycode-rails-agent "Rails AI Agent 소개" 2026-02-01
  scripts/new_note.sh prompts rails-dashboard "Dashboard 기능 프롬프트"
USAGE
}

if [[ ${1:-} == "" || ${2:-} == "" || ${3:-} == "" ]]; then
  usage
  exit 1
fi

type="$1"
slug="$2"
title="$3"
date="${4:-$(date +%F)}"

case "$type" in
  case-studies)
    dir="docs/case-studies"
    template="templates/case-study.md"
    file="$dir/${date}-${slug}.md"
    ;;
  videos)
    dir="docs/videos"
    template="templates/video-note.md"
    file="$dir/${date}-${slug}.md"
    ;;
  prompts)
    dir="docs/prompts"
    template="templates/prompt-recipe.md"
    file="$dir/${slug}.md"
    ;;
  *)
    echo "Unknown type: $type" >&2
    usage
    exit 1
    ;;
esac

mkdir -p "$dir"

if [[ -e "$file" ]]; then
  echo "Already exists: $file" >&2
  exit 2
fi

cp "$template" "$file"

# Lightweight substitutions
perl -pi -e 's/<Title>/'"$title"'/g; s/YYYY-MM-DD/'"$date"'/g' "$file"

echo "Created: $file"
