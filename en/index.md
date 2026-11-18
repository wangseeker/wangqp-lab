---
title: Home
lang: en
alt_url: /
permalink: /en/
---

<h1 class="sr-only">Wang QP Lab — Research, Publications and News</h1>

{% include section.html %}

## Research

Our laboratory uses Drosophila, mouse models and human genetic data to address two central themes — **energy intake–expenditure imbalance** and **aging** — through an integrated program of mechanistic dissection, target discovery and translational application.

We focus on three connected questions: how does nutrient sensing drive energy imbalance? How can we systematically discover the targets and networks that control energy homeostasis? And how can we turn those targets into durable, tissue-specific therapies?

<div class="question-grid">
<div class="question-card">
<span class="question-num">01</span>
<h3>How does nutrient sensing drive energy imbalance?</h3>
<p>How are sweet taste, non-nutritive sweeteners and nutritional geometry sensed and converted into feeding and metabolic signals?</p>
</div>
<div class="question-card">
<span class="question-num">02</span>
<h3>How do we discover targets and regulatory networks?</h3>
<p>How can genome-wide screens turn obesity GWAS loci into validated, druggable targets?</p>
</div>
<div class="question-card">
<span class="question-num">03</span>
<h3>How do we achieve durable therapeutic intervention?</h3>
<p>How can small molecules, antibodies, siRNA and circular mRNA-LNP deliver tissue-specific, sustained effects?</p>
</div>
</div>

{% capture text %}

We dissect bidirectional control of energy intake and expenditure using genome-wide RNAi/CRISPR screens and knockout mice, identifying key regulators such as MTCH2, NMI, TRPC6 and SEC16B. We also study the neural basis of sweet taste–energy coupling and develop natural-compound and combination therapies.

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

We built a Drosophila lifespan system combining 3D printing and computer vision, improving experimental efficiency 17-fold. We develop small molecules and circular mRNA-LNP drugs targeting the NAD pathway, and study mTORC1 and neuronal aging.

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

## Research Pipeline

From human genetic discovery to candidate drugs, we run a reusable cross-species pipeline.

<div class="pipeline">
<div class="pipeline-step"><span class="step-num">01</span><strong>Human genetic data</strong><p>GWAS and weight-loss cohorts nominate candidate genes</p></div>
<div class="pipeline-step"><span class="step-num">02</span><strong>Drosophila functional screens</strong><p>Genome-wide RNAi/CRISPR for rapid validation</p></div>
<div class="pipeline-step"><span class="step-num">03</span><strong>Mouse functional validation</strong><p>Tissue-specific knockouts reveal physiology</p></div>
<div class="pipeline-step"><span class="step-num">04</span><strong>Candidate drug discovery</strong><p>Small molecules, antibodies and mRNA-LNP for translation</p></div>
</div>

{% include section.html %}

## Selected Achievements

<div class="highlight-grid">
<div class="highlight-card">
<span class="hl-journal">Advanced Science · 2025</span>
<h3>MTCH2: the “brake” on adipose thermogenesis</h3>
<p>Stabilizes Bcl-2 and blocks lipophagy, suppressing UCP1-dependent thermogenesis.</p>
</div>
<div class="highlight-card">
<span class="hl-journal">Diabetologia · 2025</span>
<h3>SEC16B: a key switch for glucose homeostasis</h3>
<p>Links feeding behavior to insulin exocytosis and systemic glucose control.</p>
</div>
<div class="highlight-card">
<span class="hl-journal">Nature Communications · 2023</span>
<h3>Indocyanine green: a potential antidote for mushroom poisoning</h3>
<p>CRISPR screening plus AI drug repurposing identifies STT3B; featured by Nature News.</p>
</div>
<div class="highlight-card">
<span class="hl-journal">Journal of Controlled Release · 2026</span>
<h3>Circular mRNA-NAMPT: one injection for dry AMD</h3>
<p>Sustained, tissue-specific NAD supplementation after a single intravitreal injection.</p>
</div>
</div>

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
