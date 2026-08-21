# OGame Retrowave

A retrowave / synthwave userstyle for OGame, designed for use with Stylus and developed against OGame 13 with AntiGameReborn enabled.

## Status

Early development. The current theme covers the global background, navigation, HUD, overview panels, forms, buttons and several common OGame components. Individual screens are still being refined.

## Visual language

- Dark space UI with cyan, violet and magenta accents
- Cyan for hover / interaction states
- Magenta for the current / selected state
- Yellow for premium / special actions
- High-contrast content panels over a synthwave space background
- OGame artwork and information hierarchy are preserved rather than replaced wholesale

## Requirements

- OGame 13.x
- Stylus (or another compatible userstyle manager)
- AntiGameReborn is supported and used during development

## Installation

Installation instructions will be added once the first distributable userstyle is consolidated. The repository is currently a development snapshot.

## Repository layout

```text
ogame-retrowave/
├── background.png     # Synthwave background artwork
├── main.css           # Current development stylesheet
└── README.md
```

The large inline Base64 background currently present in the development stylesheet is temporary. The target layout will reference the repository-hosted background directly so the CSS remains small, editable and version-control friendly.

## Compatibility

The theme is being developed without automating or altering OGame gameplay. It changes presentation only. OGame and AntiGameReborn updates may change DOM structure or selectors and require compatibility fixes.

## Roadmap

- Consolidate the experimental CSS into a clean v1 stylesheet
- Replace the inline Base64 background with the hosted asset
- Resources screen
- Facilities screen
- Research screen
- Shipyard screen
- Fleet screen
- Galaxy screen
- AntiGameReborn compatibility pass
- Optional wide-layout experiments

## Disclaimer

This is an unofficial community userstyle and is not affiliated with, endorsed by, or sponsored by Gameforge or OGame.

OGame and related names and assets belong to their respective owners.
