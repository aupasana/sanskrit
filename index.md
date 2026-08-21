---
title: Home
layout: default
---


{% for lesson in site.lessons reversed %}
<section class="mb-5" id="{{ lesson.slug | default: lesson.title | slugify }}">
	<h2>Lesson {{lesson.number}} -- {{ lesson.title }}</h2>

	{% if lesson.youtube_id %}
	  <p class="mb-3">{% include youtube_link.html youtube_id=lesson.youtube_id title=lesson.title start=lesson.youtube_start end=lesson.youtube_end %}</p>
	{% endif %}

	{% if lesson.resources %}
	<ul>
	{% for ex in lesson.resources %}
	  {% assign clean = ex | remove: '"' %}
	  {% assign display = clean | split: '/' | last %}
	  {% assign suffix = clean | slice: -4, 4 | downcase %}
	  {% if suffix == '.pdf' %}
	    <li><a href="{{ clean }}">{{ display }}</a></li>
	  {% else %}
	    <li>{{ clean }}</li>
	  {% endif %}
	{% endfor %}
	</ul>
	{% endif %}

    <!-- <div class="mb-2">  
		{{ lesson.content }}
	</div> -->


</section>
{% endfor %}



<section class="mb-5">
<h2>Resources</h2>
<ul>
    <li><a href="https://archive.org/details/abhaysapustakaeditorialboardsamskritabharathi_198_N/mode/2up">abhyāsa pustakam (archive.org)</a></li>
</ul>
</section>