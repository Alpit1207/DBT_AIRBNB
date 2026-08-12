{% test minimum_row_count(model,min_row_count) %}
{{ config (severity = 'warn') }}

select count(*) as cnt
 from {{ model }}
HAVING count(*) < {{ min_row_count }}

{% endtest %}