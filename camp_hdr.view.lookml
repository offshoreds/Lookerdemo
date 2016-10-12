- view: camp_hdr
  sql_table_name: LOOKER.CAMP_HDR
  fields:

  - dimension: campaign
    type: string
    sql: ${TABLE}.CAMPAIGN
    description: 'description of campaing '
    
  - dimension: industry
    type: string
    sql: |
        case when ${program_name} = 'Alexandira Initiative'  THEN 'Radio/TV Stations'
            when ${program_name} = 'Balam Garden' then 'Automotive'
            when ${program_name} = 'Bartz Events' then 'Construction'
            when ${program_name} = 'Impressario'then 'Defense Aerospace'
            when ${program_name}= 'Knock You' then 'Music Production'
            when ${program_name} = 'Make the Goers Goners' then 'Information Technology'
             when ${program_name}= 'Midgard' then 'Transportation'
             when ${program_name} = 'Rosa' then 'Printing & Publishing'
             when ${program_name} = 'TimeKompression' then 'Retail Sales'
            else 'Steel Production'
           
        END
        
  
  
    
  
  

  - dimension: program
    type: string
    sql:  |
         case when ${TABLE}.PROGRAM_NAME =  'Balamb Garden Recruitment 2016' then 'abcd' else 'Opportunity Revenue' end 
         
         
  
  - dimension: Campaign_Name
    type: string
    sql: ${campaign}

  - dimension: campaign_id
    type: string
    sql: ${TABLE}.CAMPAIGN_ID
    

  - dimension: objective
    type: string
    sql: ${TABLE}.OBJECTIVE
 
  - dimension: parent_campaign
    type: string
    sql: ${TABLE}.PARENT_CAMPAIGN

  - dimension: parent__campaign
    type: string
    sql: ${TABLE}.PARENT_CAMPAIGN

  - dimension: program_name
    type: string
    sql: ${TABLE}.PROGRAM_NAME

  - measure: Spend
    type: sum
    value_format: '$#,###'
    sql: ${TABLE}.SPEND
    
  

  - dimension: Campaign_Type
    type: string
    sql: ${TABLE}.TYPE
   
  
  - dimension: Campaign__type
    type: string
    sql: ${TABLE}.TYPE
    
    
  - measure : Event
    type : avg
    value_format: '0.##'
    sql: |
        case when  ${TABLE}.TYPE ='Event' then  campaign_summary.roi  END
  

  
  - measure : Email_Blast
    type : avg
    value_format: '0.##'
    sql: |
        case when  ${TABLE}.TYPE ='Email Blast' then  campaign_summary.roi  END
        

  - measure : Promotion
    type : avg
    value_format: '0.##'
    sql: |
        case when  ${TABLE}.TYPE ='Promotion' then  campaign_summary.roi  END
        
   
    
  
  
 

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  - measure: Campaign_Count
    type: count
    links: 
    - label: Campaign Details
      url: /dashboards/24?Year=&Quarter=&Parent campaign=&Campaign=&filter_config={"Year":[{"type":"%3D","values":[{"constant":""},{}],"id":0}],"Quarter":[{"type":"%3D","values":[{"constant":""},{}],"id":1}],"Parent campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":2}],"Campaign":[{"type":"%3D","values":[{"constant":""},{}],"id":3}]}
      
      
      
   
    

    

