---
layout: page
permalink: /research-cards/
title: research (cards)
description: what we work on in the lab and the projects that fund it
nav: false
nav_order: 1
---

<!--
  DRAFT — card-grid variant of the research page, for comparison with /research/.
  Same content as the narrative version; only the layout differs.
-->

<style>
  .research-intro {
    font-size: 1.12rem;
    line-height: 1.6;
    margin-bottom: 2rem;
  }
  .rcard-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.5rem;
    margin-top: 1rem;
  }
  .rcard {
    display: flex;
    flex-direction: column;
    border: 1px solid rgba(128, 128, 128, 0.2);
    border-radius: 10px;
    overflow: hidden;
    transition:
      transform 0.15s ease,
      box-shadow 0.15s ease;
  }
  .rcard:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 18px rgba(0, 0, 0, 0.15);
  }
  .rcard > img {
    width: 100%;
    height: 175px;
    object-fit: cover;
    border-bottom: 1px solid rgba(128, 128, 128, 0.2);
  }
  .rcard > .body {
    padding: 0.9rem 1.1rem 1.1rem;
  }
  .rcard h3 {
    margin: 0.2rem 0 0.5rem;
    font-size: 1.08rem;
  }
  .rcard p {
    font-size: 0.92rem;
    line-height: 1.5;
    margin: 0;
  }
  .rcard .links {
    margin-top: 0.7rem;
    font-size: 0.85rem;
  }
</style>

<p class="research-intro">
  Our group at KU Leuven develops the mathematical models, reconstruction
  algorithms, and machine-learning methods that turn raw scanner data into
  accurate, quantitative medical images. We work across molecular imaging
  modalities — primarily PET and SPECT, and increasingly MR — with a strong
  emphasis on open, reproducible, and computationally sustainable software.
</p>

## Research themes

<div class="rcard-grid">

  <div class="rcard">
    <img src="{{ '/assets/img/publication_preview/parallelproj.png' | relative_url }}" alt="PET/SPECT image reconstruction" loading="lazy" />
    <div class="body">
      <h3>Fast, scalable PET/SPECT reconstruction</h3>
      <p>
        Accelerated, model-based reconstruction algorithms and the
        high-performance projectors behind them, for state-of-the-art image
        quality at clinically practical speed.
      </p>
      <div class="links"><a href="https://github.com/gschramm/parallelproj">parallelproj →</a></div>
    </div>
  </div>

  <div class="rcard">
    <img src="{{ '/assets/img/publication_preview/ai_pet_recon.png' | relative_url }}" alt="Deep learning for PET" loading="lazy" />
    <div class="body">
      <h3>Deep learning for low-dose &amp; accelerated PET</h3>
      <p>
        Dose- and time-reducing deep learning for PET — anatomy-guided denoising
        and listmode DL reconstruction. Winner of the PETRIC and ultra-low-dose
        PET challenges.
      </p>
      <div class="links"><a href="https://github.com/gschramm/pyapetnet">pyapetnet →</a></div>
    </div>
  </div>

  <div class="rcard">
    <img src="{{ '/assets/img/publication_preview/fast_memory_eff.png' | relative_url }}" alt="Compute-efficient machine learning" loading="lazy" />
    <div class="body">
      <h3>Sustainable, compute-efficient ML</h3>
      <p>
        Memory- and compute-efficient training, inference, and preconditioning —
        making advanced imaging ML practical, reproducible, and energy-aware.
      </p>
    </div>
  </div>

  <div class="rcard">
    <img src="{{ '/assets/img/publication_preview/sodium.png' | relative_url }}" alt="Sodium MR image reconstruction" loading="lazy" />
    <div class="body">
      <h3>Sodium (<sup>23</sup>Na) MR reconstruction</h3>
      <p>
        Extending our reconstruction expertise to sodium (<sup>23</sup>Na) MRI —
        quantitative methods for a challenging, low-SNR modality that probes
        tissue viability and metabolism.
      </p>
    </div>
  </div>

</div>

## Funded projects

<!--
  TODO (Georg): replace the placeholders below with your real grants.
  For each entry: **Project title** — Funder, your role (PI / co-PI), years. One-sentence description.
  Delete this comment when done.
-->

- **‹Project title›** — ‹funder, e.g. FWO / KU Leuven C1 / Horizon Europe›, ‹PI or co-PI›, ‹2024–2028›. ‹One-sentence description of the project.›
- **‹Project title›** — ‹funder›, ‹role›, ‹years›. ‹One-sentence description.›
- **‹Project title›** — ‹funder›, ‹role›, ‹years›. ‹One-sentence description.›
