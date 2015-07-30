- view: akamai_feed_sample
  sql_table_name: public.akamai_feed_sample
  fields:

  - dimension: clientip
    sql: ${TABLE}.clientip

  - dimension: httpversion
    sql: ${TABLE}.httpversion

  - dimension: receivedbytes
    type: number
    sql: ${TABLE}.receivedbytes

  - dimension: referer
    sql: ${TABLE}.referer

  - dimension_group: requesttime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.requesttime
    
  - dimension_group: requesttime10mins
    type: string
    sql: left(requesttime,16)  

  - dimension: responsecode
    sql: ${TABLE}.responsecode

  - dimension: timezone
    sql: ${TABLE}.timezone

  - dimension: url
    sql: ${TABLE}.url
    
  - dimension: urlendpoint
    sql: substring(url, 37,10)

  - dimension: useragent1
    sql: ${TABLE}.useragent1

  - dimension: useragent10
    sql: ${TABLE}.useragent10

  - dimension: useragent11
    sql: ${TABLE}.useragent11

  - dimension: useragent12
    sql: ${TABLE}.useragent12

  - dimension: useragent13
    sql: ${TABLE}.useragent13

  - dimension: useragent14
    sql: ${TABLE}.useragent14

  - dimension: useragent15
    sql: ${TABLE}.useragent15

  - dimension: useragent16
    sql: ${TABLE}.useragent16

  - dimension: useragent17
    sql: ${TABLE}.useragent17

  - dimension: useragent18
    sql: ${TABLE}.useragent18

  - dimension: useragent19
    sql: ${TABLE}.useragent19

  - dimension: useragent2
    sql: ${TABLE}.useragent2

  - dimension: useragent20
    sql: ${TABLE}.useragent20

  - dimension: useragent3
    sql: ${TABLE}.useragent3

  - dimension: useragent4
    sql: ${TABLE}.useragent4

  - dimension: useragent5
    sql: ${TABLE}.useragent5

  - dimension: useragent6
    sql: ${TABLE}.useragent6

  - dimension: useragent7
    sql: ${TABLE}.useragent7

  - dimension: useragent8
    sql: ${TABLE}.useragent8

  - dimension: useragent9
    sql: ${TABLE}.useragent9

  - dimension: userid
    sql: ${TABLE}.userid

  - dimension: username
    sql: ${TABLE}.username

  - dimension: verb
    sql: ${TABLE}.verb

  - measure: count
    type: count
    drill_fields: [username]

