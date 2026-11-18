---
title: Media
lang: en
alt_url: /media/
nav:
  order: 5
  tooltip: Press coverage and outreach
permalink: /en/media/
---

# {% include icon.html icon="fa-solid fa-newspaper" %}Media & Outreach

Our research and science outreach have been covered by Chinese and international media. Selected coverage is listed below in reverse chronological order.

Some international articles may require a subscription or be network-restricted; the “PDF clipping” link under each item provides a directly readable copy.

{% assign media_sorted = site.data.media | sort: "date" | reverse %}
<div class="media-grid">
{% for item in media_sorted %}
{% include media-card.html item=item %}
{% endfor %}
</div>
