- view: dm_ticket
  sql_table_name: public.dm_ticket
  fields:

  - dimension: ticket_id
    primary_key: true
    type: int
    sql: ${TABLE}.ticket_id

  - dimension_group: close
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.close_time

  - dimension: covers
    type: int
    sql: ${TABLE}.covers

  - dimension: gross_sales
    type: number
    sql: ${TABLE}.gross_sales

  - dimension_group: open
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.open_time

  - dimension_group: pos
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.pos_time

  - dimension: pretty_url
    sql: ${TABLE}.pretty_url

  - dimension_group: scrobbled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.scrobbled_time

  - dimension_group: store_day
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.store_day
    
  - dimension: store_day_raw
    hidden: true
    type: string
    sql: ${TABLE}.store_day

  - dimension: tax
    type: number
    sql: ${TABLE}.tax

  - dimension: tip
    type: number
    sql: ${TABLE}.tip

  - measure: count
    type: count
    drill_fields: []
    
  - measure: sum_gross_sales
    type: sum
    sql: ${gross_sales}
    drill_fields: [pretty_url, ticket_id]
    
  - measure: sum_covers
    type: sum
    sql: ${covers}
    drill_fields: [pretty_url, ticket_id]
    

