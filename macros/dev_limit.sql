{% macro dev_limit(column_name, days) %}
  {% if target.name == 'dev' %}
    where cast({{ column_name }} as timestamp)
      >= timestamp_sub(current_timestamp(), interval {{ days }} day)
  {% endif %}
{% endmacro %}
