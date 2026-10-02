#!/bin/sh
# Adapted from ../par_incr_presentation/make.sh.
set -eu

# Resolve assets relative to this script, even when called from another directory.
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

for tool in xelatex kpsewhich; do
  if ! command -v "$tool" >/dev/null 2>&1; then
    printf 'Missing dependency: %s\n' "$tool" >&2
    exit 1
  fi
done
if ! kpsewhich beamerthememetropolis.sty >/dev/null 2>&1; then
  printf 'Missing LaTeX theme: Metropolis\n' >&2
  exit 1
fi

mkdir -p .build/cache
export XDG_CACHE_HOME="$PWD/.build/cache"

# Two passes resolve references and the total frame count in the footer.
for pass in 1 2; do
  if ! xelatex -no-shell-escape -interaction=nonstopmode -halt-on-error \
    -file-line-error -output-directory=.build presentation.tex \
    >.build/xelatex-output.log 2>&1; then
    tail -n 60 .build/xelatex-output.log >&2
    printf 'Full log: %s/.build/xelatex-output.log\n' "$PWD" >&2
    exit 1
  fi
done

cp .build/presentation.pdf presentation.pdf
printf 'Built %s/presentation.pdf\n' "$PWD"
