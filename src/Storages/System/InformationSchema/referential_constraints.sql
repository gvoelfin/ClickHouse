ATTACH VIEW referential_constraints
    (
     `constraint_catalog` String,
     `constraint_schema` String,
     `constraint_name` Nullable(String),
     `unique_constraint_catalog` String,
     `unique_constraint_schema` String,
     `unique_constraint_name` Nullable(String),
     `match_option` String,
     `update_rule` String,
     `delete_rule` String,
     `table_name` String,
     `referenced_table_name` String,
     `CONSTRAINT_CATALOG` String,
     `CONSTRAINT_SCHEMA` String,
     `CONSTRAINT_NAME` Nullable(String),
     `UNIQUE_CONSTRAINT_CATALOG` String,
     `UNIQUE_CONSTRAINT_SCHEMA` String,
     `UNIQUE_CONSTRAINT_NAME` Nullable(String),
     `MATCH_OPTION` String,
     `UPDATE_RULE` String,
     `DELETE_RULE` String,
     `TABLE_NAME` String,
     `REFERENCED_TABLE_NAME` String
) AS
SELECT 
    ''                        AS constraint_catalog,
    NULL                      AS constraint_name,
    ''                        AS constraint_schema,
    ''                        AS unique_constraint_catalog,
    NULL                      AS unique_constraint_name,
    ''                        AS unique_constraint_schema,
    ''                        AS match_option,
    ''                        AS update_rule,
    ''                        AS delete_rule,
    ''                        AS table_name,
    ''                        AS referenced_table_name,
    constraint_catalog        AS CONSTRAINT_CATALOG,
    constraint_name           AS CONSTRAINT_NAME,
    constraint_schema         AS CONSTRAINT_SCHEMA,
    unique_constraint_catalog AS UNIQUE_CONSTRAINT_CATALOG,
    unique_constraint_name    AS UNIQUE_CONSTRAINT_NAME,
    unique_constraint_schema  AS UNIQUE_CONSTRAINT_SCHEMA,
    match_option              AS MATCH_OPTION,
    update_rule               AS UPDATE_RULE,
    delete_rule               AS DELETE_RULE,
    table_name                AS TABLE_NAME,
    referenced_table_name     AS REFERENCED_TABLE_NAME
WHERE false; -- make sure this view is always empty
