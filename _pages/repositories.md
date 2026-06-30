---
layout: page
permalink: /repositories/
title: repositories
description: my GitHub account, our lab organization, and a selection of open-source projects
nav: true
nav_order: 5
---

<style>
  .gh-profiles {
    display: flex;
    flex-wrap: wrap;
    gap: 1.5rem 2.5rem;
    margin: 1rem 0 2.5rem;
  }
  .gh-profile {
    display: flex;
    align-items: center;
    gap: 1rem;
  }
  .gh-profile img.avatar {
    width: 72px;
    height: 72px;
    border-radius: 50%;
  }
  .gh-profile .meta {
    line-height: 1.45;
  }
  .repo-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
    gap: 1rem;
    margin-top: 1rem;
  }
  .repo-grid a {
    display: block;
  }
  .repo-grid img {
    width: 100%;
    height: auto;
    border-radius: 8px;
    border: 1px solid rgba(128, 128, 128, 0.25);
    transition:
      transform 0.15s ease,
      box-shadow 0.15s ease;
  }
  .repo-grid a:hover img {
    transform: translateY(-2px);
    box-shadow: 0 4px 14px rgba(0, 0, 0, 0.18);
  }
</style>

## Profiles

<div class="gh-profiles">
  <div class="gh-profile">
    <a href="https://github.com/gschramm"><img class="avatar" src="https://github.com/gschramm.png" alt="gschramm" loading="lazy" /></a>
    <div class="meta">
      <a href="https://github.com/gschramm"><strong>@gschramm</strong></a><br />
      my personal GitHub account
    </div>
  </div>
  <div class="gh-profile">
    <a href="https://github.com/KUL-recon-lab"><img class="avatar" src="https://github.com/KUL-recon-lab.png" alt="KUL-recon-lab" loading="lazy" /></a>
    <div class="meta">
      <a href="https://github.com/KUL-recon-lab"><strong>KUL-recon-lab</strong></a><br />
      our lab's GitHub organization
    </div>
  </div>
</div>

## Selected repositories

<div class="repo-grid">
  {% for repo in site.data.repositories.github_repos %}
    <a href="https://github.com/{{ repo }}" title="{{ repo }}">
      <img src="https://opengraph.githubassets.com/1/{{ repo }}" alt="{{ repo }}" loading="lazy" />
    </a>
  {% endfor %}
</div>
