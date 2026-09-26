// =============================================================================
// Allen Mao - Resume (Typst format using RenderCV template)
// =============================================================================

#import "@preview/rendercv:0.3.0": *

// Theme configuration:
// - Serif (XCharter, matching original LaTeX): "XCharter"
// - Sans-serif (Modern Tech): "Ubuntu" or "Ubuntu Sans"
#let selected-font = "XCharter"
#let accent-color = rgb(26, 54, 93) // Deep slate navy

#show: rendercv.with(
  name: "Allen Mao",
  locale-catalog-language: "en",
  page-size: "us-letter",
  page-top-margin: 0.45in,
  page-bottom-margin: 0.45in,
  page-left-margin: 0.5in,
  page-right-margin: 0.5in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(15, 23, 42),
  colors-name: rgb(15, 23, 42),
  colors-section-titles: accent-color,
  colors-links: accent-color,
  typography-line-spacing: 0.48em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: selected-font,
  typography-font-family-name: selected-font,
  typography-font-family-headline: selected-font,
  typography-font-family-connections: selected-font,
  typography-font-family-section-titles: selected-font,
  typography-font-size-body: 10.5pt,
  typography-font-size-name: 24pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.15em,
  typography-bold-name: true,
  typography-bold-section-titles: true,
  links-underline: false,
  header-alignment: center,
  header-space-below-name: 0.25cm,
  header-space-below-connections: 0.32cm,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.35cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.36cm,
  section-titles-space-below: 0.24cm,
  sections-allow-page-break: false,
  sections-space-between-text-based-entries: 0.12cm,
  sections-space-between-regular-entries: 0.30cm,
  entries-date-and-location-width: 4.2cm,
  entries-side-space: 0cm,
  entries-summary-space-above: 0.05cm,
  entries-highlights-bullet: text(10pt, [•], baseline: -0.5pt),
  entries-highlights-space-left: 0.35cm,
  entries-highlights-space-above: 0.05cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.35em,
)

= Allen Mao

#connections(
  [#link("mailto:allenmao@berkeley.edu", icon: false, if-underline: false, if-color: false)[allenmao\@berkeley.edu]],
  [#link("https://github.com/citronella3alain", icon: false, if-underline: false, if-color: false)[github.com\/citronella3alain]],
  [US Citizen],
)

== Skills

#strong[AI & Simulation:] Physics-Informed ML, NLP, PyTorch, VTK, PyVista \
#strong[Infrastructure:] AWS (EKS, ECS, EC2, SageMaker), Kubernetes, Pulumi (IaC), Nvidia Triton, Docker, CI/CD \
#strong[Languages & Frameworks:] Python, Java, C/C++, Go, Flask, SQL, CMake, Angular, Vue.js

== Experience

#regular-entry(
  [
    #strong[Senior AI Engineer], Ansys (part of Synopsys) -- Sunnyvale, CA (Remote)
  ],
  [
    Jan 2024 – Present
  ],
  main-column-second-row: [
    - Architected a cloud-native data ingestion platform (VTK, Flask, Pulumi, AWS EKS) to automate mesh and metadata extraction from physics simulations, enabling scalable data prep for ML training.
    - Defined "canonical data" standards to decouple fragile ML logic from raw CAD/simulation formats, implementing robust CPU-side validation to prevent expensive failures during downstream GPU training.
    - Expanded platform capabilities to support transient (time-series) physics data, specifically implementing high-performance ingestion for LS-DYNA d3plot and keyfile formats using #link("https://github.com/open-lasso-python/lasso-python")[lasso-python] and #link("https://dyna.docs.pyansys.com/")[pydyna].
    - Advanced the open-source ecosystem by upstreaming patches to #link("https://github.com/open-lasso-python/lasso-python")[lasso-python] and navigating VTK C++ source and CMake builds to identify and report core library bugs to maintainers.
    - Led cross-functional initiatives with Fluent, Ensight, DPF, and LSTC teams to integrate native SDKs, eliminating manual data conversion and streamlining simulation-to-ML customer workflows.
  ],
)

#regular-entry(
  [
    #strong[R&D Engineer II, CTO Office], Ansys -- San Jose, CA (Hybrid)
  ],
  [
    Sep 2022 – Dec 2023
  ],
  main-column-second-row: [
    - Refactored a proprietary, library-agnostic ML framework into a modular, object-oriented architecture, resulting in widespread adoption by internal researchers who previously relied on raw PyTorch and TensorFlow.
    - Architected a multi-modal web platform (Go, Angular, Python) utilizing AWS SageMaker and Nvidia Triton to expose physics-informed ML models, enabling engineers to run ML-based physics simulation.
    - Engineered a scalable research environment by deploying Jupyter Enterprise Gateway on EKS with isolated kernels, eliminating cross-library dependency conflicts and reducing environment setup time for the R&D team.
  ],
)

#regular-entry(
  [
    #strong[Software Development Engineering Intern], Amazon -- Portland, OR (Remote)
  ],
  [
    May 2021 – Aug 2021
  ],
  main-column-second-row: [
    - Modernized a legacy vendor search system by conducting stakeholder research and log analysis to architect a Vue.js and Spring application, streamlining listings management for enterprise-scale partners.
  ],
)

#regular-entry(
  [
    #strong[Software Engineering Intern], NASA Kennedy Space Center -- Merritt Island, FL (Remote)
  ],
  [
    Aug 2020 – Dec 2020
  ],
  main-column-second-row: [
    - Engineered acceptance tests for the #strong[Artemis] Launch Control System GUI, ensuring mission-critical software reliability for the Space Launch System ground operations.
  ],
)

#regular-entry(
  [
    #strong[NSF REU Fellow], USC Information Sciences Institute -- Marina del Rey, CA
  ],
  [
    Jun 2019 – Aug 2019
  ],
  main-column-second-row: [
    - #strong[Founding Lead] of #strong[SoMEF] (Software Metadata Extraction Framework), an open-source NLP pipeline that has since grown to 1,100+ commits, 20 contributors, and 30+ releases on GitHub.
    - Engineered the initial automated extraction logic to categorize scientific software documentation.
    - #strong[First-authored] and presented research at the #strong[2019 IEEE International Conference on Big Data]; project continues to be utilized by the scientific community for automated model integration.
  ],
)

== Leadership, Projects, & Honors

- #strong[Data Tooling:] Developed a visualizer for CoNLL-formatted NLP data called #link("https://github.com/citronella3alain/view-sesame")[view-sesame]\; engineered a Hackathon-winning (1st place) Chrome Extension for COVID-19 relief tracking.
- #strong[Technical Writing & Communication:] Winner in the #strong[Berkeley Economic Review] essay contest for analytical writing; authored a public-facing blog while working as a park ranger intern at Yellowstone National Park.

== Education

#regular-entry(
  [
    #strong[University of California, Berkeley] -- BA in Computer Science
  ],
  [
    May 2022
  ],
)
