---
title: 媒体报道
alt_url: /en/media/
nav:
  order: 5
  tooltip: 媒体采访与科普报道
permalink: /media/
---

# {% include icon.html icon="fa-solid fa-newspaper" %}媒体报道

实验室的研究与科普工作受到国内外媒体关注。以下为部分报道与采访，按时间倒序排列。

{% assign media_sorted = site.data.media | sort: "date" | reverse %}
<div class="media-grid">
{% for item in media_sorted %}
{% include media-card.html item=item %}
{% endfor %}
</div>
