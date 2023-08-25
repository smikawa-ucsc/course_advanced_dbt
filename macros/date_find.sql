{% macro date_find(op) %}
   {% if op == 'min' %}
    min(CASE WHEN is_subscribed_current_month THEN date_month END) OVER (PARTITION BY user_id, subscription_id)
    {% else %}
    max(CASE WHEN is_subscribed_current_month THEN date_month END) OVER (PARTITION BY user_id, subscription_id)
    {% endif %}
{% endmacro %}
