#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

OUT="ogame-retrowave.user.css"
TMP="${OUT}.tmp"

# main.css already contains the UserStyle metadata and the @-moz-document wrapper.
# Remove only the final wrapper brace, append modular CSS, then close it again.
python3 - <<'PY'
from pathlib import Path

root = Path('.')
main = (root / 'main.css').read_text(encoding='utf-8').rstrip()

if not main.endswith('}'):
    raise SystemExit('main.css does not end with the expected @-moz-document closing brace')

# Remove the final closing brace only.
main = main[:-1].rstrip()

# Ensure Stylus auto-update points at the generated bundle.
main = main.replace(
    '@updateURL      https://raw.githubusercontent.com/Uklonil/ogame-retrowave/main/main.css',
    '@updateURL      https://raw.githubusercontent.com/Uklonil/ogame-retrowave/main/ogame-retrowave.user.css'
)

parts = [
    'components/technology-grid.css',
    'screens/resources.css',
    'screens/facilities.css',
]

bundle = [main]
for path in parts:
    content = (root / path).read_text(encoding='utf-8').strip()
    bundle.append(f'\n    /* ===== Bundled from {path} ===== */\n')
    # Module files are authored without @-moz-document, so indent them inside the wrapper.
    bundle.append('\n'.join(('    ' + line) if line else '' for line in content.splitlines()))

bundle.append('\n}\n')
(root / 'ogame-retrowave.user.css.tmp').write_text('\n'.join(bundle), encoding='utf-8')
PY

mv "$TMP" "$OUT"
