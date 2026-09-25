# Allen Mao - Resume (Typst)

This branch contains a rewrite of the resume in [Typst](https://typst.app/), a modern markup-based typesetting system designed to replace LaTeX with faster compilation, cleaner syntax, and consistent typography.

## Features

- **Pixel-faithful layout**: Matches the 1-page structure, typography, and density of the original LaTeX version.
- **Modern Typst syntax**: Uses native grids, show rules, and semantic helper functions without ugly LaTeX spacing workarounds (e.g. `\vspace{-18.5pt}`).
- **ATS-friendly**: High-fidelity Unicode text extraction, standard fonts, and clickable hyperlinks.
- **Fast compile times**: Compiles instantaneously (~15ms vs seconds in LaTeX).

## Files

- [Resume.typ](file:///home/allen/work/resuME/typst/Resume.typ) – Typst source file.
- [Resume.pdf](file:///home/allen/work/resuME/typst/Resume.pdf) – Compiled PDF document.
- [Resume.png](file:///home/allen/work/resuME/typst/Resume.png) – High-resolution image preview.

## Compilation

To compile to PDF:
```bash
typst compile Resume.typ Resume.pdf
```

To render a preview image (PNG):
```bash
typst compile Resume.typ Resume.png
```

To live-preview with automatic recompilation on save:
```bash
typst watch Resume.typ Resume.pdf
```
