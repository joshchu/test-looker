- view: pipeline_brand_spender_profiles
  sql_table_name: public.pipeline_brand_spender_profiles
  fields:

  - dimension: average_spend
    type: number
    sql: ${TABLE}.average_spend

  - dimension: average_tip_percent
    type: number
    sql: ${TABLE}.average_tip_percent

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: estimated_lifetime_value
    type: int
    sql: ${TABLE}.estimated_lifetime_value

  - dimension_group: last_visit
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_visit_date

  - dimension: loyalty_member
    type: yesno
    sql: ${TABLE}.loyalty_member

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension: spender_id
    sql: ${TABLE}.spender_id

  - dimension: total_spent
    type: number
    sql: ${TABLE}.total_spent

  - dimension: total_visits
    type: int
    sql: ${TABLE}.total_visits

  - measure: count
    type: count
    drill_fields: [customer_name]

