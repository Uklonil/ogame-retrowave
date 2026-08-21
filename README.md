# OGame Retrowave

A retrowave / synthwave userstyle for **OGame 13**, designed for **Stylus** and developed with **AntiGameReborn** enabled.

The goal is to preserve OGame's information density and original artwork while replacing the classic blue-grey chrome with a darker command-deck aesthetic: cyan interaction states, magenta active states, restrained neon accents, and a custom synthwave space background.

## Status

Early development. The overview, global HUD, navigation, resource bar, planet selector, generic controls, Resources and Facilities screens already have themed coverage.

## Installation

Use **one file only** in Stylus:

1. Install the Stylus browser extension.
2. Open `ogame-retrowave.user.css` using GitHub's raw view.
3. Install it as a userstyle, or copy/paste that single file into Stylus.
4. Keep automatic updates enabled if you want future versions from this repository.

`ogame-retrowave.user.css` is the public entrypoint and loads the modular CSS files with `@import`. You do not need to copy the files in `components/` or `screens/` manually.

The style targets OGame universe hosts following the `sNNN-xx.ogame.gameforge.com` pattern, so it is not tied to a single universe or language.

## Compatibility

- OGame 13.x
- Chromium-based browsers / Opera
- Stylus
- AntiGameReborn: developed and tested with AGR enabled

Other browsers and extensions may work, but are not yet part of the tested baseline.

## Visual language

- **Cyan** — available / interaction / hover
- **Magenta** — current, selected or actively building
- **Yellow** — temporarily unavailable / premium / special actions depending on context
- **Muted grey** — requirements not met
- **Green / red** — positive and negative status

The background is deliberately darker behind the main game interface and visually heavier on the right side so it does not compete with gameplay information.

## Repository layout

```text
ogame-retrowave/
├── background.png
├── ogame-retrowave.user.css   # single Stylus entrypoint
├── main.css                   # core theme / global OGame chrome
├── components/
│   └── technology-grid.css    # shared technology/building cards
├── screens/
│   ├── resources.css
│   └── facilities.css
├── README.md
└── LICENSE
```

The background is loaded from this repository rather than embedded as Base64. Shared UI patterns live in `components/`; screen files should contain only screen-specific differences.

## Roadmap

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
