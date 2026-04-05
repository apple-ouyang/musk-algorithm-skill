#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 4 ]]; then
  echo "usage: $0 <id> <category> <title> <url>" >&2
  exit 1
fi

id="$1"
category="$2"
title="$3"
url="$4"

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
target_dir="$repo_root/corpus/$category/$id"
mkdir -p "$target_dir"

fetched_at="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
html_path="$target_dir/source.html"
raw_path="$target_dir/source.raw.txt"
md_path="$target_dir/README.md"
status_path="$target_dir/status.txt"

user_agent='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)'

fetch_direct() {
  curl --fail --location --silent --show-error \
    --max-time 45 \
    --user-agent "$user_agent" \
    "$url"
}

fetch_jina() {
  local stripped
  stripped="$(printf '%s' "$url" | sed 's#^https\?://##')"
  curl --fail --location --silent --show-error \
    --max-time 45 \
    --user-agent "$user_agent" \
    "https://r.jina.ai/http://$stripped"
}

if fetch_direct >"$html_path" 2>"$target_dir/direct.err"; then
  echo "direct" >"$status_path"
else
  rm -f "$html_path"
  if fetch_jina >"$raw_path" 2>"$target_dir/jina.err"; then
    echo "jina" >"$status_path"
  else
    echo "failed" >"$status_path"
  fi
fi

if [[ -f "$html_path" ]]; then
  if file "$html_path" | rg -qi 'html|xml'; then
    pandoc -f html -t gfm "$html_path" -o "$target_dir/body.md" || true
  elif file "$html_path" | rg -qi 'pdf'; then
    cp "$html_path" "$target_dir/source.pdf"
  else
    cp "$html_path" "$raw_path"
  fi
fi

{
  echo "# $title"
  echo
  echo "- id: \`$id\`"
  echo "- category: \`$category\`"
  echo "- source_url: <$url>"
  echo "- fetched_at_utc: \`$fetched_at\`"
  echo "- fetch_mode: \`$(cat "$status_path")\`"
  echo
  echo "## Notes"
  echo
  if [[ "$(cat "$status_path")" == "failed" ]]; then
    echo "- Fetch failed through both direct and Jina paths. See error logs in this folder."
  else
    echo "- Source captured locally in this directory."
  fi
  echo
  if [[ -f "$target_dir/body.md" ]]; then
    echo "## Extracted Markdown"
    echo
    cat "$target_dir/body.md"
  elif [[ -f "$raw_path" ]]; then
    echo "## Extracted Text"
    echo
    cat "$raw_path"
  else
    echo "## Extracted Content"
    echo
    echo "_No extracted content available._"
  fi
} >"$md_path"

echo "$id,$title,$url,$category,$(cat "$status_path"),fetched:$fetched_at"
