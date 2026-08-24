-- models/test_env.sql

select
    '{{ env_var("DBT_ENV_CUSTOM_ENV_SCHEMA", "NOT_SET") }}' as schema_value

