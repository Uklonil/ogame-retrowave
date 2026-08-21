# OGame Retrowave

A retrowave / synthwave userstyle for **OGame 13**, designed for **Stylus** and developed with **AntiGameReborn** enabled.

The goal is to preserve OGame's information density and original artwork while replacing the classic blue-grey chrome with a darker command-deck aesthetic: cyan interaction states, magenta active states, restrained neon accents, and a custom synthwave space background.

## Status

Early development. The overview, global HUD, navigation, resource bar, planet selector, generic controls and core visual language are already themed. Individual OGame screens are still being refined.

## Installation

1. Install the Stylus browser extension.
2. Open `main.css` in this repository using its raw view.
3. Install the userstyle with Stylus.
4. Keep automatic updates enabled if you want future versions from this repository.

The style targets OGame universe hosts following the `sNNN-xx.ogame.gameforge.com` pattern, so it is not tied to a single universe or language.

## Compatibility

- OGame 13.x
- Chromium-based browsers / Opera
- Stylus
- AntiGameReborn: developed and tested with AGR enabled

Other browsers and extensions may work, but are not yet part of the tested baseline.

## Visual language

- **Cyan** — interaction / hover
- **Magenta** — current or selected state
- **Yellow** — premium / special actions
- **Green / red** — positive and negative status

The background is deliberately darker behind the main game interface and visually heavier on the right side so it does not compete with gameplay information.

## Repository layout

```text
ogame-retrowave/
├── background.png
├── main.css
├── README.md
└── LICENSE
```

The background is loaded from this repository rather than embedded as Base64, keeping the CSS editable and update-friendly.

## Roadmap

- Refine Resources and Facilities
- Research and Shipyard
- Fleet dispatch and movement UI
- Galaxy view
- AntiGameReborn-specific polish
- Cross-resolution testing
- Evaluate an optional wide layout only after the base theme is stable

## Disclaimer

This project is an unofficial visual userstyle. It does not automate gameplay or game actions. OGame and its assets are property of their respective owners.

## License

MIT for the userstyle code. Third-party game assets remain subject to their respective owners' terms.
