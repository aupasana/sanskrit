---
title: Lessons
layout: default
permalink: /lessons/
---

## Lessons

<div class="list-group">
{% for lesson in site.lessons %}
  <a class="list-group-item list-group-item-action" href="{{ lesson.url | relative_url }}">
    <strong>{{ lesson.title }}</strong>
    {% if lesson.subtitle %}<div class="small text-muted">{{ lesson.subtitle }}</div>{% endif %}
  </a>
{% endfor %}
</div>
