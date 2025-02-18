
  
    

        create or replace transient table jparkerrogersJBgwU_analytics.dbt_parker_facts.fct_fantasy_point_leaders
         as
        (SELECT
    player_id,
    player_name,
    position,
    recent_team,
    total_fantasy_points,
    total_fantasy_points_pp,
    games_played,
    avg_fantasy_points_per_game,
    avg_fantasy_points_ppr_per_game,
    RANK() OVER (ORDER BY total_fantasy_points DESC) AS standard_rank,
    RANK() OVER (ORDER BY total_fantasy_points_ppr DESC) AS ppr_rank
FROM 
    jparkerrogersJBgwU_analytics.dbt_parker_intermediate.int_fantasy_points
ORDER BY 
    total_fantasy_points DESC
        );
      
  