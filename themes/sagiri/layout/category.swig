{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ __('title.category') }}: {{ page.category }} | {{ config.title }}{% endblock %}

{% block content %}

  {######################}
  {### CATEGORY BLOCK ###}
  {######################}
  <div class="post-block category post">

    <div id="posts" class="posts-collapse">
	  <div class="collection-contain">
		<div class="collection-title">
			<{% if theme.seo %}h2{% else %}h1{% endif %}>{#
			#}{{ page.category }}{#
			#}<small>{{  __('title.category')  }}</small>
			</{% if theme.seo %}h2{% else %}h1{% endif %}>
		</div>

      {% for post in page.posts %}
        {{ post_template.render(post) }}
      {% endfor %}

	  </div>
    </div>

  </div>
  {##########################}
  {### END CATEGORY BLOCK ###}
  {##########################}

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
