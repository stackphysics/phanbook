{{ content()}}
{% if object.getFirst()%}
<!-- get information a tags via relation -->
<div class="wrapper-inner description-yellow post-bytag">
    <span class="tags">
    	{{ link_to('' , 'class' : 'post-tag', slugName)}}
	</span>
	{% for tag in object.getFirst().tag.toArray() %}
		{% if tag['slug'] == slugName %}
	    <p class="tag-excerpt">
	        {{  tag['description'] }}
	    </p>
	    {% break %}
	    {% endif %}
    {% endfor %}
</div>
{% endif %}
{{ partial('partials/right-side', ['post' : object]) }}
{{ partial('partials/list-posts') }}
