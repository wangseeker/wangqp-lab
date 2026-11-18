---
alt_url: /en/
---

<h1 class="sr-only">王巧平代谢与衰老实验室 — 研究方向、研究成果与最新动态</h1>

{% include section.html %}

## 研究方向

课题组以果蝇为模式生物，结合小鼠模型与人群遗传数据，围绕**能量摄入—消耗失衡**与**衰老**两大主线，构建“机制解析—靶点发现—转化应用”三位一体的研究体系。

我们试图回答三个相互衔接的问题：营养感知如何驱动能量稳态失衡？如何系统性地发现能量稳态调控靶点及网络？如何实现长效干预，把靶点转化为可用药物？

<div class="question-grid">
<div class="question-card">
<span class="question-num">01</span>
<h3>营养感知如何驱动能量稳态失衡？</h3>
<p>甜味、代糖与营养几何如何被感知，并转化为摄食与代谢信号？</p>
</div>
<div class="question-card">
<span class="question-num">02</span>
<h3>如何系统性发现靶点与调控网络？</h3>
<p>如何用全基因组筛选把肥胖 GWAS 位点变成可验证、可成药的靶点？</p>
</div>
<div class="question-card">
<span class="question-num">03</span>
<h3>如何实现长效干预与药物转化？</h3>
<p>小分子、抗体、siRNA 与环状 mRNA-LNP，如何做到组织特异、可持续？</p>
</div>
</div>

{% capture text %}

围绕能量摄入与消耗的双向调控，通过全基因组 RNAi/CRISPR 筛选与基因敲除小鼠，鉴定 MTCH2、NMI、TRPC6、SEC16B 等关键调控因子；同时解析甜味—能量偶联的神经机制，并开发天然化合物与联合用药策略。

{%
  include button.html
  link="research/obesity"
  text="肥胖研究方向"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/ai-obesity.png"
  link="research/obesity"
  title="肥胖研究"
  text=text
%}

{% capture text %}

开发基于 3D 打印与计算机视觉的果蝇寿命实验系统，将实验效率提升 17 倍；围绕 NAD 通路开发小分子与环状 mRNA-LNP 药物，并解析 mTORC1、神经元衰老等寿命调控机制。

{%
  include button.html
  link="research/aging"
  text="衰老研究方向"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% endcapture %}

{%
  include feature.html
  image="images/ai-aging.png"
  link="research/aging"
  title="衰老研究"
  flip=true
  text=text
%}

{% include section.html %}

## 研究体系

从人群遗传发现到候选药物，形成一条可复用的跨物种研究流水线。

<div class="pipeline">
<div class="pipeline-step"><span class="step-num">01</span><strong>人群遗传数据</strong><p>GWAS 与减重队列锁定候选基因</p></div>
<div class="pipeline-step"><span class="step-num">02</span><strong>果蝇功能筛选</strong><p>全基因组 RNAi/CRISPR 快速验证</p></div>
<div class="pipeline-step"><span class="step-num">03</span><strong>小鼠功能验证</strong><p>组织特异敲除解析生理功能</p></div>
<div class="pipeline-step"><span class="step-num">04</span><strong>候选药物发现</strong><p>小分子、抗体与 mRNA-LNP 推向转化</p></div>
</div>

{% include section.html %}

## 代表性成果

<div class="highlight-grid">
<div class="highlight-card">
<span class="hl-journal">Advanced Science · 2025</span>
<h3>MTCH2：脂肪产热的“刹车”</h3>
<p>稳定 Bcl-2、抑制脂质自噬，阻断 UCP1 依赖性产热，为产热干预提供新靶点。</p>
</div>
<div class="highlight-card">
<span class="hl-journal">Diabetologia · 2025</span>
<h3>SEC16B：血糖稳态的关键开关</h3>
<p>连接摄食行为与胰岛素胞吐，为糖代谢调控提供新的分子入口。</p>
</div>
<div class="highlight-card">
<span class="hl-journal">Nature Communications · 2023</span>
<h3>吲哚菁绿：蘑菇中毒的潜在解药</h3>
<p>CRISPR 筛选结合 AI 药物重定位，锁定 STT3B，获 Nature News 报道。</p>
</div>
<div class="highlight-card">
<span class="hl-journal">Journal of Controlled Release · 2026</span>
<h3>环状 mRNA-NAMPT：单次注射治疗干性 AMD</h3>
<p>眼内长效补充 NAD，单次玻璃体腔注射即可实现持续神经保护。</p>
</div>
</div>

{% include section.html %}

## 研究成果

<div class="stat-row">
  <div class="stat"><strong>50+</strong><span>已发表论文</span></div>
  <div class="stat"><strong>5</strong><span>授权及实审专利</span></div>
  <div class="stat"><strong>4579</strong><span>Google Scholar 引用</span></div>
</div>

已发表论文（以第一或通讯作者发表于 *Cell Metabolism*、*Nature Communications*、*Advanced Science*、*Nature Protocols*、*Cell Reports* 等期刊），覆盖肥胖、味觉、衰老及解毒药物研发等方向。

{%
  include button.html
  link="publications"
  text="完整论文与专利"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

## 媒体报道与科普

<div class="media-grid">
{% for item in site.data.media limit:6 %}
{% include media-card.html item=item %}
{% endfor %}
</div>

{%
  include button.html
  link="media"
  text="全部媒体报道"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}

{% include section.html %}

## 最新动态

<ul class="news-list">
  <li><strong>2025-12-23</strong> <a href="{% link _posts/2025-12-23-article-63.md %}">Advanced Science 中山大学王巧平教授等团队揭示肥胖新机制——MTCH2通过抑制自噬阻碍脂肪产热</a></li>
  <li><strong>2025-12-23</strong> <a href="{% link _posts/2025-12-23-article-64.md %}">Nature Protocols 中山大学王巧平教授等团队一套系统性研发靶向解毒剂的完整方案</a></li>
  <li><strong>2025-12-23</strong> <a href="{% link _posts/2025-12-23-article-65.md %}">Diabetologia 中山大学王巧平团队破解糖尿病新机制！SEC16B基因被发现是调控血糖的关键“开关”</a></li>
</ul>

{%
  include button.html
  link="news"
  text="全部动态"
  icon="fa-solid fa-arrow-right"
  flip=true
  style="bare"
%}