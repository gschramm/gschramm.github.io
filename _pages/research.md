---
layout: page
permalink: /research/
title: research
description: what we work on in the lab and the projects that fund it
nav: true
nav_order: 1
---

<style>
  .research-intro {
    font-size: 1.12rem;
    line-height: 1.6;
    margin-bottom: 2.5rem;
  }
  .themes {
    display: flex;
    flex-direction: column;
    gap: 2.5rem;
  }
  .theme {
    display: flex;
    gap: 1.6rem;
    align-items: center;
    flex-wrap: wrap;
  }
  .theme > img {
    width: 300px;
    max-width: 100%;
    border-radius: 8px;
    border: 1px solid rgba(128, 128, 128, 0.2);
    flex-shrink: 0;
  }
  .theme > .body {
    flex: 1;
    min-width: 260px;
  }
  .theme > .body h3 {
    margin-top: 0;
    margin-bottom: 0.5rem;
  }
  .theme:nth-of-type(even) {
    flex-direction: row-reverse;
  }
</style>

<p class="research-intro">
  Our group at KU Leuven develops the <strong>physics models, reconstruction
  algorithms, and computational tools</strong> that turn raw PET and SPECT scanner data
  into <strong>accurate, quantitative images</strong>. We combine model-based reconstruction,
  advanced optimization, and machine learning, with a strong emphasis on
  <strong>open, efficient, and reproducible software</strong>.
</p>

## Research themes

<div class="themes">

  <div class="theme">
    <img src="{{ '/assets/img/publication_preview/moco_admm.png' | relative_url }}" alt="Advanced physics modeling" loading="lazy" />
    <div class="body">
      <h3>Advanced physics modeling for higher image quality</h3>
      <p>
        The quality of a reconstructed image is limited by how faithfully we
        model the <strong>physics of the acquisition</strong>. We develop improved models of
        effects such as <strong>photon scatter</strong> and <strong>patient and organ motion</strong>, and embed
        them directly into the reconstruction — yielding images that are
        <strong>quantitatively more accurate and visually sharper</strong>.
      </p>
    </div>
  </div>

  <div class="theme">
    <img src="{{ '/assets/img/publication_preview/recon_free.png' | relative_url }}" alt="Joint estimation of activity and attenuation" loading="lazy" />
    <div class="body">
      <h3>Joint estimation of activity and attenuation in PET</h3>
      <p>
        Accurate PET quantification requires knowing the attenuation image, which
        is not always available or reliable. We develop methods that
        <strong>estimate the tracer activity distribution and the attenuation simultaneously</strong>
        from the <strong>emission data itself</strong>, reducing the dependence on separate
        CT- or MR-based attenuation information.
      </p>
    </div>
  </div>

  <div class="theme">
    <img src="{{ '/assets/img/publication_preview/parallelproj.png' | relative_url }}" alt="Fast, differentiable PET reconstruction tools" loading="lazy" />
    <div class="body">
      <h3>Fast, efficient, and DL-ready PET reconstruction</h3>
      <p>
        Modern reconstruction and deep-learning methods need building blocks
        that are <strong>fast and fully differentiable</strong>. We develop efficient,
        <strong>GPU-accelerated and differentiable computational tools</strong> for PET —
        including our open-source
        <a href="https://github.com/gschramm/parallelproj">parallelproj</a>
        projectors — that plug directly into both <strong>classical iterative algorithms</strong>
        and <strong>modern learned reconstruction pipelines</strong>.
      </p>
    </div>
  </div>

  <div class="theme">
    <img src="{{ '/assets/img/publication_preview/fast_precond.png' | relative_url }}" alt="Advanced reconstruction algorithms" loading="lazy" />
    <div class="body">
      <h3>Advanced image reconstruction algorithms</h3>
      <p>
        Beyond modeling, the <strong>optimization algorithm</strong> that solves the
        reconstruction problem matters. We design and adapt advanced,
        computationally efficient optimizers — such as <strong>stochastic
        variance-reduced gradient (SVRG) methods</strong> — for PET reconstruction,
        <strong>accelerating convergence</strong> and reducing the compute needed to reach
        high-quality images.
      </p>
    </div>
  </div>

</div>

## Funded projects

- **Enhancing Precision and Accuracy of Positron Emission Tomography: Leveraging Variational Methods and Machine Learning for Advanced Static and Dynamic PET Image Reconstruction from Raw Data** — FWO Weave project ([G016626N](https://research.kuleuven.be/portal/en/project/3M260105)), lead PI, 2026–2028. Joint project with Prof. Martin Holler (University of Graz, Austria) and Prof. Reinhard Heckel (TU Munich, Germany).
- **Computational Methods for Ultra-High Resolution Brain PET Imaging** — KU Leuven internal C2 project ([3M250523](https://research.kuleuven.be/portal/en/project/3M250523)), co-PI (promotor of the KU Leuven sub-project), 2025–2029. With Prof. Koen Van Laere and Prof. Michel Koole (KU Leuven).
