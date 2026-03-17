{% macro categorize_orders(amount_column) %}
    {# Categorizes orders based on their amount: #}
    {# 'High Value' for amounts >= 500 #}
    {# 'Medium Value' for amounts >= 200 #}
    {# 'Low Value' for amounts < 200 #}
    case 
        when {{ amount_column }} >= 500 then 'High Value'
        when {{ amount_column }} >= 200 then 'Medium Value'
        else 'Low Value'
    end 
{% endmacro %}