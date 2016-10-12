
- view: sql_runner_query
  derived_table:
    sql: |
      SELECT * FROM (SELECT
        sum(expenses_category.EXPENSE_AMOUNT) AS "ec.expense_amount_m"
      FROM LOOKER.EXPENSES_CATEGORY  expenses_category
      
      ORDER BY 1 DESC) --WHERE ROWNUM <= 10

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: ec_expense_amount_m
    type: string
    sql: ${TABLE}."ec.expense_amount_m"

  sets:
    detail:
      - ec_expense_amount_m

