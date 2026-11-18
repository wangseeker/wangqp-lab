---
title: Home
lang: en
alt_url: /
permalink: /en/
---

<h1 class="sr-only">Wang QP Lab — Research, Publications and News</h1>

{% include section.html %}

## Research

Our laboratory studies the mechanisms of obesity and aging and develops therapeutics, centered on the regulation of energy metabolism. We have built an integrated research program spanning mechanistic dissection, target discovery and translational application.

{% capture text %}

Using Drosophila as a model organism, we perform genome-wide functional screens to identify novel regulators of energy metabolism, and validate their functions in mammals with knockout mice, aiming to discover new anti-obesity drug targets. We also study how sweet taste perception is coupled to energy metabolism, providing a foundation for understanding dietary intake and energy balance.

{%
  include button.html
  link="en/research/obesity"
  text="Obesity Research"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/ai-obesity.png"
  link="en/research/obesity"
  title="Obesity Research"
  text=text
%}

{% capture text %}

We developed a Drosophila lifespan experiment system based on 3D printing and computer algorithms, improving experimental efficiency 17-fold, and are developing anti-aging drugs that target the NAD pathway.

{%
  include button.html
  link="en/research/aging"
  text="Aging Research"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/ai-aging.png"
  link="en/research/aging"
  title="Aging Research"
  flip=true
  text=text
%}

{% include section.html %}

## Publications

<div class="stat-row">
  <div class="stat"><strong>50+</strong><span>Peer-reviewed papers</span></div>
  <div class="stat"><strong>5</strong><span>Patents granted or pending</span></div>
  <div class="stat"><strong>4,579</strong><span>Google Scholar citations</span></div>
</div>

Our work has been published as first or corresponding author in *Cell Metabolism*, *Nature Communications*, *Advanced Science*, *Nature Protocols*, *Cell Reports* and other journals, covering obesity, taste, aging and antidote discovery.

{%
  include button.html
  link="en/publications"
  text="Full publications and patents"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

## Media & Outreach

<div class="media-grid">
{% for item in site.data.media limit:6 %}
{% include media-card.html item=item %}
{% endfor %}
</div>

{%
  include button.html
  link="en/media"
  text="All media coverage"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

## Latest News

<ul class="news-list">
  <li><strong>2025-12-23</strong> <a href="{% link _posts/2025-12-23-article-63.md %}">Advanced Science: MTCH2 suppresses adipose thermogenesis by inhibiting autophagy — a new mechanism of obesity</a></li>
  <li><strong>2025-12-23</strong> <a href="{% link _posts/2025-12-23-article-64.md %}">Nature Protocols: a complete pipeline for the systematic development of targeted antidotes</a></li>
  <li><strong>2025-12-23</strong> <a href="{% link _posts/2025-12-23-article-65.md %}">Diabetologia: SEC16B identified as a key switch controlling blood glucose homeostasis</a></li>
</ul>

{%
  include button.html
  link="en/news"
  text="All news"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}
