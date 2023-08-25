{% macro rolling_periods(column_name, partition_by, aggregation_function, interval, order_by='created_at') %}
    {{aggregation_function}}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{interval-1}} PRECEDING AND CURRENT ROW
            ) AS {{aggregation_function}}_{{interval}}_periods_{{ column_name }}
{% endmacro %}
