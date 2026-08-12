{% macro learn_variables() %} 

    {% set your_name_jinja = "Alpit" %}
    {{ log("Hello " ~ your_name_jinja , info=True) }}

    {{ log("Hello dbt user " ~ var("user_name","No user name set") ~ "!", info=True) }}

{% endmacro %}