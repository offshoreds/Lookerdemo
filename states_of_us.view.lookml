- view: us_states
  sql_table_name: C2CDB.US_STATES
  fields:

  - dimension: state_code
    type: string
    sql: ${TABLE}.STATE_CODE

  - dimension: us_state_name
    label: 'states'
    view_label: 'states'
    type: string
    sql: ${TABLE}.US_STATE_NAME

  - measure: count
    type: count
    drill_fields: [us_state_name]

