- view: opty_hdr1
  sql_table_name: LOOKER.OPTY_HDR1
  fields:
  
  - measure: Amount
    type: sum
    value_format: '$0.##,, " M"'
   
    sql: ${TABLE}.AMOUNT
    drill_fields: []

  - measure: Opportunity_Revenue
    type: sum
    value_format: '$0.##,, " M"'
   
    sql: ${TABLE}.AMOUNT
    drill_fields: []
   
    links: 
    - label: Opportunity Details
      url: /dashboards/27
      
   
    
      
  - dimension: camp_id
    type: string
    sql: ${TABLE}.CAMP_ID

  - dimension: isclosed
    type: string
    sql: ${TABLE}.ISCLOSED

  - dimension: iswon
    type: string
    sql: ${TABLE}.ISWON

  - dimension: name
    type: string
    sql: ${TABLE}.NAME
    
  - dimension: Opportunity_Name
    type: string
    sql: ${TABLE}.NAME
    
  
    
  - measure: Opportunity__revenue
    type: sum
    label: 'Revenue'
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.REVENUE
    
  - measure: Opportunity___revenue
    type: sum
    value_format: '$#0.00,,"M"'
    sql: ${TABLE}.REVENUE
    
  - measure: revenue__
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.REVENUE
    drill_fields: []
   
    links: 
    - label: Opportunity Details
      url: /dashboards/27
      
   

  - measure: Booked_Revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.REVENUE
    drill_fields: []
    links:
    - label: Order details
      url: /dashboards/28
      

    
    
  - measure: Booked_Orders
    type: count_distinct
   
    sql: |
       case when ${TABLE}.ISWON='1' then ${TABLE}.ROW_WID end

  - dimension: row_wid
    type: string
    sql: ${TABLE}.ROW_WID
    
  - dimension: year
    type: string
    sql: ${TABLE}.year
    
  - dimension: quarter
    type: string
    sql: ${TABLE}.quarter
    
  - dimension: pipeline
    type: string
    sql: ${TABLE}.pipeline
    
  - dimension: pipeline_stage
    type: string
    sql: ${TABLE}.pipeline
    

    
  - dimension: pipeline_type
    type: string
    sql: ${TABLE}.pipeline_type
  
   
   
   
  - measure: Closed_won
    type: sum
    value_format: '$0.##,, " M"'
    sql: |
       case when ${TABLE}.pipeline='Closed Won' then ${TABLE}.REVENUE end


  - measure: Closed_lost
    type: sum
    value_format: '$0.##,, " M"'
    sql: |
       case when ${TABLE}.pipeline='Closed Lost' then ${TABLE}.REVENUE end
       
  - measure: Plan
    type: sum
    value_format: '$0.##,, " M"'
    sql: |
       case when ${TABLE}.pipeline='Plan' then ${TABLE}.REVENUE end
       
  - measure: Create
    type: sum
    value_format: '$0.##,, " M"'
    sql: |
       case when ${TABLE}.pipeline='Create' then ${TABLE}.REVENUE end
       
  - measure: Qualify
    type: sum
    value_format: '$0.##,, " M"'
    sql: |
       case when ${TABLE}.pipeline='Qualify' then ${TABLE}.REVENUE end

  - dimension: state
    type: string
    sql: ${TABLE}.STATE
    
    
  - dimension: State_
    type: string
    sql: ${TABLE}.STATE
    

  - measure: Opportunity_count
    type: count
    
  - measure: Opportunities
    label: '# Opportunities'
    type: count
    
  
    
  

    
    
    
    