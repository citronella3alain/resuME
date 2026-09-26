# Allen Mao - Resume (Typst)

This branch contains a modern rewrite of the resume in [Typst](https://typst.app/) using the [`rendercv`](https://typst.app/universe/package/rendercv) package.

## Features

- **Professional Typography**: Uses the authentic **XCharter** font family (the exact font used in the LaTeX original), providing sharp, authoritative serifs.
- **RenderCV Template Architecture**: Built on `@preview/rendercv:0.3.0`, providing battle-tested grid alignment, consistent entry margins, and clean section dividers.
- **Modern Polish**: Subtle deep-navy accents (`#1a365d`) on section titles and links elevate readability while remaining 100% ATS-friendly.
- **Easy Theme Switching**: Switch between Classic Serif (`XCharter`) and Modern Tech Sans-Serif (`Ubuntu`) with a single variable in `Resume.typ`.
- **Sub-Second Builds**: Compiles in ~15ms with full live reload support.

## Files

- [Resume.typ](file:///home/allen/work/resuME/typst/Resume.typ) – Typst source file.
- [Resume.pdf](file:///home/allen/work/resuME/typst/Resume.pdf) – Compiled PDF document.
- [Resume.png](file:///home/allen/work/resuME/typst/Resume.png) – High-resolution image preview.
- [fonts/](file:///home/allen/work/resuME/typst/fonts) – Bundled XCharter OpenType fonts.

## Compilation

To compile to PDF:
```bash
typst compile --font-path fonts Resume.typ Resume.pdf
```

To live-preview with automatic recompilation on save:
```bash
typst watch --font-path fonts Resume.typ Resume.pdf
```
