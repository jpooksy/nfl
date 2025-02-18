select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    PLAYER_ID as unique_field,
    count(*) as n_records

from NFL.PUBLIC.player_stats_by_game
where PLAYER_ID is not null
group by PLAYER_ID
having count(*) > 1



      
    ) dbt_internal_test