// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.1.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Georg Schramm",
  footer: context { [#emph[Georg Schramm -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Feb 2026] ],
  locale-catalog-language: "en",
  page-size: "a4",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 2,
    day: 14,
  ),
)


= Georg Schramm

#connections(
  [#connection-with-icon("location-dot")[Leuven, Belgium]],
  [#link("https://linkedin.com/in/georg-schramm-a372099b", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[georg-schramm-a372099b]]],
  [#link("https://scholar.google.com/citations?user=txZ90cAAAAJ", icon: false, if-underline: false, if-color: false)[#connection-with-icon("graduation-cap")[Google Scholar]]],
  [#link("https://github.com/gschramm", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[gschramm]]],
)


== General Information

#strong[Date of Birth:] 08 April 1987

#strong[Languages:] English, German, Dutch

== Education

#education-entry(
  [
    #strong[Technische Universität Dresden, Germany], Medical Imaging

    - Attenuation correction in PET\/MR

    - summa cum laude

  ],
  [
    2015

  ],
  degree-column: [
    #strong[PhD]
  ],
)

#education-entry(
  [
    #strong[Technische Universität Dresden, Germany], Physics

    - Simulation of neutron capture and photon scattering

  ],
  [
    2011

  ],
  degree-column: [
    #strong[MSC]
  ],
)

== Experience

#regular-entry(
  [
    #strong[KU Leuven], Assistant Professor of Molecular Image Reconstruction and Analysis

  ],
  [
    Leuven, Belgium

    Sept 2023 – present

    2 years 6 months

  ],
)

#regular-entry(
  [
    #strong[Stanford University], Instructor

  ],
  [
    Stanford, USA

    Aug 2022 – Aug 2023

    1 year 1 month

  ],
)

#regular-entry(
  [
    #strong[KU Leuven], Postdoctoral Researcher

  ],
  [
    Leuven, Belgium

    Apr 2015 – July 2022

    7 years 4 months

  ],
)

== Honors and Awards

#regular-entry(
  [
    #strong[Runner-up of the ultra low dose PET denoising challenge]

  ],
  [
    2025

  ],
)

#regular-entry(
  [
    #strong[Winner of the PET reconstruction challenge (PETRIC)]

  ],
  [
    2024

  ],
)

#regular-entry(
  [
    #strong[PhD award of Helmholtz-Zentrum Dresden-Rossendorf]

  ],
  [
    2014

  ],
)

#regular-entry(
  [
    #strong[Award for notable achievements in nuclear medicine (DGN)]

  ],
  [
    2014

  ],
)

#regular-entry(
  [
    #strong[Ehrenfried Walter von Tschirnhaus Prize TU Dresden]

  ],
  [
    2011

  ],
)

== Academic Interests

#regular-entry(
  [
    #strong[Positron Emission Tomography (PET)]

    - PET image reconstruction

    - PET image quantification and analysis

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Physics]

    - PET physics

    - Applied Nuclear Physics

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Applied Mathematics]

    - Inverse problems

    - Optimization

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Applied Computer Science]

    - High performance computing

    - Efficient algorithms

  ],
  [
  ],
)
