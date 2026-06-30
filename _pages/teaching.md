---
layout: page
permalink: /teaching/
title: teaching
description: courses I teach at KU Leuven
nav: true
nav_order: 4
---

<style>
  .course-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.2rem;
    margin-top: 1rem;
    margin-bottom: 3rem;
  }
  .course-card {
    display: block;
    border: 1px solid rgba(128, 128, 128, 0.2);
    border-radius: 10px;
    padding: 1rem 1.2rem 1.1rem;
    text-decoration: none;
    color: inherit;
    transition:
      transform 0.15s ease,
      box-shadow 0.15s ease;
  }
  .course-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 18px rgba(0, 0, 0, 0.12);
  }
  .course-card h3 {
    margin: 0.1rem 0 0.3rem;
    font-size: 1.05rem;
  }
  .course-card .course-id {
    display: inline-block;
    font-family: var(--global-code-font-family, monospace);
    font-size: 0.78rem;
    opacity: 0.65;
    margin-bottom: 0.7rem;
  }
  .course-card .roles {
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
    font-size: 0.9rem;
  }
  .course-card .venue {
    display: inline-block;
    font-size: 0.8rem;
    opacity: 0.65;
    margin-bottom: 0.7rem;
  }
  .course-card .materials {
    margin-top: 0.6rem;
    font-size: 0.85rem;
    font-weight: 500;
  }
</style>

## University courses

<div class="course-grid">

  <a class="course-card" href="https://onderwijsaanbod.kuleuven.be/syllabi/e/G0Z64AE.htm">
    <h3>Technology and techniques in nuclear medicine</h3>
    <span class="course-id">G0Z64a</span>
    <div class="roles">
      <span><strong>Reader, Coordinator</strong> — 2024/25, 2025/26</span>
      <span><strong>Teaching assistant</strong> — 2023/24</span>
    </div>
  </a>

  <a class="course-card" href="https://onderwijsaanbod.kuleuven.be/syllabi/e/E01R5AE.htm">
    <h3>Ionizing radiation: imaging and medical aspects</h3>
    <span class="course-id">E01R5a</span>
    <div class="roles">
      <span><strong>Reader, Coordinator</strong> — 2023/24, 2024/25, 2025/26</span>
    </div>
  </a>

  <a class="course-card" href="https://onderwijsaanbod.kuleuven.be/syllabi/e/G0Z57AE.htm">
    <h3>Computational and numerical methods in medical physics</h3>
    <span class="course-id">G0Z57a</span>
    <div class="roles">
      <span><strong>Teaching assistant</strong> — 2023/24, 2024/25, 2025/26</span>
    </div>
  </a>

  <a class="course-card" href="https://onderwijsaanbod.kuleuven.be/syllabi/e/H03H5AE.htm">
    <h3>Medical imaging and analysis</h3>
    <span class="course-id">H03H5a</span>
    <div class="roles">
      <span><strong>Teaching assistant</strong> — 2024/25, 2025/26</span>
    </div>
  </a>

</div>

## Short courses & training schools

<div class="course-grid">

  <a class="course-card" href="https://github.com/gschramm/2023-MIC-ImageRecon-Shortcourse">
    <h3>Medical Image Reconstruction: from Foundations to AI</h3>
    <span class="venue">Short course · IEEE NSS/MIC 2023</span>
    <div class="roles">
      <span>with Prof. Andrew Reader &amp; Prof. Kuang Gong</span>
    </div>
    <div class="materials">Slides &amp; hands-on examples →</div>
  </a>

  <a class="course-card" href="https://github.com/SyneRBI/SIRF-Exercises/tree/master/notebooks/Deep_Learning_listmode_PET">
    <h3>Deep learning and listmode PET image reconstruction</h3>
    <span class="venue">Project · PSMR 2024</span>
    <div class="roles">
      <span>with Prof. Kris Thielemans &amp; Imraj Singh (UCL)</span>
    </div>
    <div class="materials">Interactive Jupyter notebooks →</div>
  </a>

</div>
