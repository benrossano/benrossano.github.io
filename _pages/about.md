---
layout: about
title: about
permalink: /

profile:
  align: right
  image: prof_pic.jpg
  image_circular: true # crops the image to make it circular

selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: true # includes a list of news items
  scrollable: true # adds a vertical scroll bar if there are more than 3 news items
  limit: 5 # leave blank to include all the news in the `_news` folder

latest_posts:
  enabled: false
  scrollable: true # adds a vertical scroll bar if there are more than 3 new posts items
  limit: 3 # leave blank to include all the blog posts
---

I'm a PhD student at [Massachusetts Institute of Technology](https://www.csail.mit.edu/), where I am co-advised by [Nick Roy](https://aeroastro.mit.edu/people/nicholas-roy/) and [Leslie Kaelbling](https://people.csail.mit.edu/lpk/). My research focuses on task planning in a world of large pretrained models and how the structure of classical planning can be combined with the commonsense knowledge these models bring.

Previously, I completed my Master's degree working with [Jonathan How](https://www.mit.edu/~jhow/) on multi-robot coordination in unknown and uncertain environments. Before that, I earned my B.S. in Robotics from the [University of Michigan](https://robotics.umich.edu/) (Go Blue!).

<!-- The hobby sentence is wrapped in {::nomarkdown} so kramdown passes the popup
     markup through verbatim. Without it kramdown rewrites the inline SVG:
     `viewBox` is lowercased to `viewbox` (SVG is case-sensitive, so scaling
     breaks) and the multi-line map splits the paragraph, leaving a literal
     `</svg>` in the page. -->

{::nomarkdown}
<p>In my free time, I enjoy <span class="pop" tabindex="0" aria-describedby="pop-music">music{% include pop-music.liquid %}</span>, <span class="pop" tabindex="0" aria-describedby="pop-sports">sports{% include pop-sports.liquid %}</span>, and <span class="pop" tabindex="0" aria-describedby="pop-travel">travelling{% include pop-travel.liquid %}</span>. Check out my pop/rock cover band, <a href="https://www.instagram.com/seldomchalant/">Seldom Chalant</a>!</p>
{:/}

{% include pop-styles.liquid %}
{% include profile-styles.liquid %}
{% include publication-styles.liquid %}
