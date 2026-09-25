// =============================================================================
// Allen Mao - Resume (Typst format)
// =============================================================================

#set page(
  paper: "us-letter",
  margin: (top: 0.5in, bottom: 0.5in, left: 0.5in, right: 0.5in),
)

#set text(
  font: ("Libertinus Serif", "DejaVu Serif"),
  size: 10.5pt,
  lang: "en",
  hyphenate: false,
)

#set par(justify: false, leading: 0.48em)

// Link styling: black text like LaTeX hidelinks, maintaining clickable links in PDF
#show link: set text(fill: black)
// To enable subtle underlines instead, uncomment below:
// #show link: it => underline(stroke: 0.4pt + luma(180), offset: 1.5pt)[#it]

// Section heading with horizontal divider rule
#show heading.where(level: 1): it => block(width: 100%, above: 0.85em, below: 0.45em)[
  #text(size: 1.15em, weight: "bold")[#it.body]
  #v(-0.35em)
  #line(length: 100%, stroke: 0.5pt + black)
]

// Bullet lists: compact spacing matching LaTeX \setlist[itemize]{itemsep=-2pt}
#set list(
  marker: [•],
  body-indent: 0.45em,
  spacing: 0.38em,
)
#show list: set block(above: 0.35em, below: 0.55em)

// Helper function for experience role headers with right-aligned dates
#let role(title, company, location, dates) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      *#title,* #company
      #if location != "" [ -- #location]
    ],
    dates,
  )
}

// -----------------------------------------------------------------------------
// Header
// -----------------------------------------------------------------------------
#align(center)[
  #text(size: 22pt, weight: "bold")[Allen Mao] \
  #v(2pt)
  #text(size: 10.5pt)[
    #link("mailto:allenmao@berkeley.edu")[allenmao\@berkeley.edu] #h(4pt) | #h(4pt)
    #link("https://github.com/citronella3alain")[github.com/citronella3alain] #h(4pt) | #h(4pt)
    US Citizen
  ]
]

#v(-0.25em)

// -----------------------------------------------------------------------------
// Skills
// -----------------------------------------------------------------------------
= Skills
*AI & Simulation:* Physics-Informed ML, NLP, PyTorch, VTK, PyVista \
*Infrastructure:* AWS (EKS, ECS, EC2, SageMaker), Kubernetes, Pulumi (IaC), Nvidia Triton, Docker, CI/CD \
*Languages & Frameworks:* Python, Java, C/C++, Go, Flask, SQL, CMake, Angular, Vue.js

// -----------------------------------------------------------------------------
// Experience
// -----------------------------------------------------------------------------
= Experience

#role(
  "Senior AI Engineer",
  [Ansys (part of Synopsys)],
  [Sunnyvale, CA (Remote)],
  [Jan 2024 -- Present],
)
- Architected a cloud-native data ingestion platform (VTK, Flask, Pulumi, AWS EKS) to automate mesh and metadata extraction from physics simulations, enabling scalable data prep for ML training.
- Defined "canonical data" standards to decouple fragile ML logic from raw CAD/simulation formats, implementing robust CPU-side validation to prevent expensive failures during downstream GPU training.
- Expanded platform capabilities to support transient (time-series) physics data, specifically implementing high-performance ingestion for LS-DYNA d3plot and keyfile formats using #link("https://github.com/open-lasso-python/lasso-python")[lasso-python] and #link("https://dyna.docs.pyansys.com/")[pydyna].
- Advanced the open-source ecosystem by upstreaming patches to #link("https://github.com/open-lasso-python/lasso-python")[lasso-python] and navigating VTK C++ source and CMake builds to identify and report core library bugs to maintainers.
- Led cross-functional initiatives with Fluent, Ensight, DPF, and LSTC teams to integrate native SDKs, eliminating manual data conversion and streamlining simulation-to-ML customer workflows.

#role(
  "R&D Engineer II, CTO Office",
  [Ansys],
  [San Jose, CA (Hybrid)],
  [Sep 2022 -- Dec 2023],
)
- Refactored a proprietary, library-agnostic ML framework into a modular, object-oriented architecture, resulting in widespread adoption by internal researchers who previously relied on raw PyTorch and TensorFlow.
- Architected a multi-modal web platform (Go, Angular, Python) utilizing AWS SageMaker and Nvidia Triton to expose physics-informed ML models, enabling engineers to run ML-based physics simulation.
- Engineered a scalable research environment by deploying Jupyter Enterprise Gateway on EKS with isolated kernels, eliminating cross-library dependency conflicts and reducing environment setup time for the R&D team.

#role(
  "Software Development Engineering Intern",
  [Amazon],
  [Portland, OR (Remote)],
  [May 2021 -- Aug 2021],
)
- Modernized a legacy vendor search system by conducting stakeholder research and log analysis to architect a Vue.js and Spring application, streamlining listings management for enterprise-scale partners.

#role(
  "Software Engineering Intern",
  [NASA Kennedy Space Center],
  [Merritt Island, FL (Remote)],
  [Aug 2020 -- Dec 2020],
)
- Engineered acceptance tests for the *Artemis* Launch Control System GUI, ensuring mission-critical software reliability for the Space Launch System ground operations.

#role(
  "NSF REU Fellow",
  [USC Information Sciences Institute],
  [Marina del Rey, CA],
  [Jun 2019 -- Aug 2019],
)
- *Founding Lead* of *SoMEF* (Software Metadata Extraction Framework), an open-source NLP pipeline that has since grown to 1,100+ commits, 20 contributors, and 30+ releases on GitHub.
- Engineered the initial automated extraction logic to categorize scientific software documentation.
- *First-authored* and presented research at the *2019 IEEE International Conference on Big Data*; project continues to be utilized by the scientific community for automated model integration.

// -----------------------------------------------------------------------------
// Leadership, Projects, & Honors
// -----------------------------------------------------------------------------
= Leadership, Projects, & Honors

- *Data Tooling:* Developed a visualizer for CoNLL-formatted NLP data called #link("https://github.com/citronella3alain/view-sesame")[view-sesame]\; engineered a Hackathon-winning (1st place) Chrome Extension for COVID-19 relief tracking.
- *Technical Writing & Communication:* Winner in the *Berkeley Economic Review* essay contest for analytical writing; authored a public-facing blog while working as a park ranger intern at Yellowstone National Park.

// -----------------------------------------------------------------------------
// Education
// -----------------------------------------------------------------------------
= Education

#grid(
  columns: (1fr, auto),
  align: (left, right),
  [*University of California, Berkeley* -- BA in Computer Science],
  [May 2022],
)
