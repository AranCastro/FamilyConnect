#!/usr/bin/env bash
# Wraps app.html (the page body used for the hosted preview) into a standalone index.html.
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<!-- Generated from app.html by build.sh: edit app.html, then run ./build.sh -->\n'
  sed -n '1,/^<\/style>/p' app.html
  printf '</head>\n<body>\n'
  sed -n '/^<\/style>/,$p' app.html | tail -n +2
  printf '</body>\n</html>\n'
} > index.html
echo "Wrote prototype/index.html"
