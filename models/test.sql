-- models/test_env.sql

--select
  --  '{{ env_var("DBT_ENV_CUSTOM_ENV_SCHEMA", "NOT_SET") }}' as schema_value

{{ log("ENV SCHEMA = " ~ env_var("DBT_ENV_CUSTOM_ENV_SCHEMA"), info=True) }}

{{ log("TARGET NAME = " ~ target.name, info=True) }}

{{ log("TARGET SCHEMA = " ~ target.schema, info=True) }}