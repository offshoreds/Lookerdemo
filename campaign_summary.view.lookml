- view: campaign_summary
  sql_table_name: LOOKER.CAMPAIGN_SUMMARY
  fields:


  - measure: Total_Leads
    type: sum
    sql: ${TABLE}.Total_Leads
    links: 
    - label: Lead Details
      url: /dashboards/25?Year=&Quarter=&Parent Campaign=&Campaign=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}]}
      
      
  - measure: Total__Leads
    type: sum
    sql: ${TABLE}.Total_Leads  
    
  - measure: assisted_revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.ASSISTED_REVENUE

  - measure: assisted_win
    type: sum
    sql: ${TABLE}.ASSISTED_WIN

  - measure: average_win
    type: sum
    sql: ${TABLE}.AVERAGE_WIN

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.CAMPAIGN_ID

  - dimension: closed_leads_not_connected
    type: string
    sql: ${TABLE}.CLOSED_LEADS_NOT_CONNECTED
  
  - measure: closed_leads_not_connected_count
    type: sum
    sql: ${TABLE}.CLOSED_LEADS_NOT_CONNECTED

  - measure: closed_won_optys_count
    type: sum
    sql: ${TABLE}.CLOSED_WON_OPTYS
  
  - dimension: closed_won_optys
    type: string
    sql: ${TABLE}.CLOSED_WON_OPTYS

  - measure: cost_per_lead
    type: avg
    value_format: '#,##0.00'
    sql: ${TABLE}.COST_PER_LEAD
    
  - measure: customer_acquisition_cost
    type: avg
    value_format: '#,##0.00'
    sql: ${TABLE}.CUSTOMER_ACQUISITION_COSTS

  - dimension: early_stage
    type: string
    sql: ${TABLE}.EARLY_STAGE

  - dimension: in_progress_leads
    type: string
    sql: ${TABLE}.IN_PROGRESS_LEADS
    
  - measure: in_progress_leads_count
    type: sum
    sql: ${TABLE}.IN_PROGRESS_LEADS

  - measure: inquiry_to_mql
    type: sum
    sql: ${TABLE}.INQUIRY_TO_MQL

  - measure: late_stage
    type: sum
    sql: ${TABLE}.LATE_STAGE

  - dimension: marketing_engagement
    type: string
    sql: ${TABLE}.MARKETING_ENGAGEMENT

  - measure: mql_to_opty
    type: sum
    sql: ${TABLE}.MQL_TO_OPTY

  - measure: mql_to_opty_target
    type: sum
    sql: ${TABLE}.MQL_TO_OPTY_TARGET

  - measure: mql_to_sal
    type: sum
    sql: ${TABLE}.MQL_TO_SAL

  - dimension: opportunities
    type: string
    sql: ${TABLE}.OPPORTUNITIES
  
  - measure: opportunities_count
    type: sum
    sql: ${TABLE}.OPPORTUNITIES
    drill_fields: []
   
    links: 
    - label: Opportunity Details
      url: https://datasticians.looker.com/dashboards/27
      
   
    
  - measure: Opportunities
    type: sum
    sql: ${TABLE}.OPPORTUNITIES
   
    

  - measure: opty_to_close
    type: sum
    sql: ${TABLE}.OPTY_TO_CLOSE

  - dimension: opty_to_close_target
    type: string
    sql: ${TABLE}.OPTY_TO_CLOSE_TARGET

  - measure: pending_leads
    type: sum
    sql: ${TABLE}.PENDING_LEADS

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: region
    type: string
    sql: ${TABLE}.REGION

  - measure: rejected_leads
    type: sum
    sql: ${TABLE}.REJECTED_LEADS

  - measure: opportunity_revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.REVENUE
    
   
    
  - measure: booked_order
    type: sum
    sql: ${TABLE}.booked_order
    
  - measure: Booked_Orders
    type: sum
    sql: ${TABLE}.booked_order  
    
  
  - measure: campaign_cost
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.campaign_cost
    
    
  - measure: campaign_target
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.campaign_target
    
  - measure: booked_revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.booked_revenue
    drill_fields: []
    links:
    - label: Order details
      url: /dashboards/28
      
      
  - measure: booked___revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.booked_revenue
    
    

  - measure: ROI
    type: avg
    value_format: '#,##0.00'
    sql: ${TABLE}.ROI

  - measure: sal_to_sql
    type: sum
    sql: ${TABLE}.SAL_TO_SQL

  - measure: sales_accetped_leads
    type: sum
    sql: ${TABLE}.SALES_ACCETPED_LEADS

  - measure: sales_qualified_leads
    type: sum
    sql: ${TABLE}.SALES_QUALIFIED_LEADS

  - dimension: segment
    type: string
    sql: ${TABLE}.SEGMENT

  - measure: sourced_revenue
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.SOURCED_REVENUE

  - measure: sourced_win
    type: sum
    sql: ${TABLE}.SOURCED_WIN

  - measure: sql_to_closed_optys
    type: sum
    sql: ${TABLE}.SQL_TO_CLOSED_OPTYS

  - measure: target_mql
    type: sum
    sql: ${TABLE}.TARGET_MQL
  
  - measure: in_progress
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${TABLE}.SOURCED_REVENUE+${TABLE}.ASSISTED_REVENUE


  - measure: total_inquiries
    type: sum
    value_format: '#,###'
    sql: ${TABLE}.TOTAL_INQUIRIES/500

  - measure: total_qualified_leads
    type: sum
    sql: ${TABLE}.TOTAL_QUALIFIED_LEADS
    
  - measure: Leads
    type: sum
    sql: ${TABLE}.PENDING_LEADS +${TABLE}.REJECTED_LEADS+${TABLE}.IN_PROGRESS_LEADS

  - measure: count
    type: count
    drill_fields: []

