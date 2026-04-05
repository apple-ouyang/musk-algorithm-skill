#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
index_csv="$repo_root/sources/index.csv"

tail -n +2 "$repo_root/sources/seed.tsv" | while IFS=$'\t' read -r id category title url; do
  line="$("$repo_root/scripts/fetch_source.sh" "$id" "$category" "$title" "$url")"
  if ! rg -q "^$id," "$index_csv"; then
    printf '%s\n' "$line" >>"$index_csv"
  fi
done
