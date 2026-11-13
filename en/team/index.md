---
title: Team
lang: en
alt_url: /team/
nav:
  order: 3
  tooltip: Meet our team
permalink: /en/team/
---

# {% include icon.html icon="fa-solid fa-users" %}Our Team

{% assign affiliation = "Sun Yat-sen University" %}
{% for group in site.data.members_en %}
{% unless group.role == "principal-investigator" %}
{% include section.html %}
<h2>{{ group.label }}</h2>
{% endunless %}
{% for entry in group.members %}
{% assign member = site.members | where: "slug", entry.slug | first %}
<div class="portrait-wrapper">
{% if entry.cv_url %}
<a class="portrait" href="{{ entry.cv_url | relative_url }}" aria-label="{{ entry.name }} — curriculum vitae">
{% else %}
<div class="portrait">
{% endif %}
{% if member.role and site.data.types[member.role] %}
{% assign role_icon = site.data.types[member.role].icon %}
{% include icon.html icon=role_icon %}
{% endif %}
<img src="{{ member.image | relative_url | uri_escape }}" class="portrait-image" alt="{{ entry.name }} portrait" loading="lazy" {% include fallback.html %}>
<span class="portrait-name">{{ entry.name }}</span>
<span class="portrait-description">{{ entry.bio }}</span>
<span class="portrait-affiliation">{{ affiliation }}</span>
{% if entry.cv_url %}</a>{% else %}</div>{% endif %}
</div>
{% endfor %}
{% endfor %}

{% include section.html %}

## Alumni

**Former postdocs:** Xin-Yuan Zhao

**2026:** Zi-Wen Jia (Master's), Xiao-Long Wang (PhD)

**2025:** Chen Ji (Master's)

**2024:** Bei Wang (PhD), Sha-Sha Li (PhD), An-Qi Li (PhD), Yu Xu (Master's)

**2023:** Xin-Yuan Zhao (PhD), Zhi-Can Yang (Master's), Zhi-Ying Liu (Master's)

**2022:** Ruo-Xin Zhang (PhD), Yi Luo (Master's), Ying Liu (Master's), Ben-Chi Zhao (Master's)

**2021:** Yun Hu (Master's), Hua-Xuan Wei (Master's), Mei-Ling Lai (Master's)

{% include section.html %}

We are recruiting postdoctoral researchers and research fellows. Candidates with backgrounds in biology, pharmacy, bioinformatics and related fields are welcome. Please send your CV to the mailbox below — the envelope icon opens your email client.

{%
  include button.html
  type="email"
  text="mailbox"
  link="mailbox"
%}
