---
title: Home
layout: default
---

<section class="mb-5">
The Sanskrit learning path below references Samskrita Bharati classes, <br/>
which aired on Doordarshan a few decades back. <br/>
They are split up into small self-contained units.
</section>

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
    <li><a href="https://www.youtube.com/playlist?list=PLCi0Uvx-2g0Nz0t1izFoWbCqwFcRmDrmu">complete youtube playlist</a></li>
</ul>
</section>