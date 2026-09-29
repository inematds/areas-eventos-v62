#!/usr/bin/env bash
# Gera as cenas (Codex image_gen pela assinatura; fallback flux2-klein local). 4 em paralelo.
cd "$(dirname "$0")/.."
while IFS=$'\t' read -r nome cena; do printf '%s\0%s\0' "$nome" "$cena"; done < context/cenas.tsv |
 xargs -0 -n2 -P4 sh -c 'python3 ~/.claude/skills/formato-curso-v6/scripts/gerar-cena.py "assets/img/$0.webp" "$1" </dev/null 2>&1 | tail -1 | sed "s/^/[$0] /"'
