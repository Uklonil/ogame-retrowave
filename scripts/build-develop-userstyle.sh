#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

OUT="ogame-retrowave-develop.user.css"
TMP="${OUT}.tmp"

python3 - <<'PY'
from pathlib import Path

root = Path('.')
out = root / 'ogame-retrowave-develop.user.css.tmp'

metadata = '''/* ==UserStyle==
@name           OGame Retrowave — Develop
@namespace      https://github.com/Uklonil/ogame-retrowave
@version        2.0.0-dev.8
@description    Experimental full-theme rewrite for OGame 13. Develop channel; designed for Stylus and OGame Infinity.
@author         Uklonil
@homepageURL    https://github.com/Uklonil/ogame-retrowave/tree/develop
@supportURL     https://github.com/Uklonil/ogame-retrowave/issues
@updateURL      https://raw.githubusercontent.com/Uklonil/ogame-retrowave/develop/ogame-retrowave-develop.user.css
@license        MIT
==/UserStyle== */

@-moz-document regexp("https://s[0-9]+-[a-z]{2}\\.ogame\\.gameforge\\.com/game/.*") {
'''

parts = [
    'v2/tokens.css',
    'v2/foundation.css',
    'v2/shell.css',
    'v2/top-hud.css',
    'v2/components.css',
    'v2/pages/overview.css',
    'v2/integrations/ogame-infinity.css',
    'v2/chrome.css',
    'v2/fixes/opera-gx.css',
    'v2/responsive.css',
]

bundle = [metadata.rstrip()]
for path in parts:
    content = (root / path).read_text(encoding='utf-8').strip()
    bundle.append(f'\n    /* ===== Bundled from {path} ===== */\n')
    bundle.append('\n'.join(('    ' + line) if line else '' for line in content.splitlines()))

bundle.append('\n}\n')
out.write_text('\n'.join(bundle), encoding='utf-8')
PY

mv "$TMP" "$OUT"
printf 'Built %s\n' "$OUT"
