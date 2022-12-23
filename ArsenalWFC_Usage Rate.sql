
;WITH passes (player, team, pass_outcome, clean_shot_assist, clean_goal)

AS

(

SELECT player, team,

CASE
WHEN outcome  IS  NULL THEN 'completed'
WHEN outcome = 'Incomplete' THEN 'Incomplete'
WHEN outcome = 'Injury Clearance' THEN 'Injury Clearance'
WHEN outcome = 'Out' THEN 'Out'
WHEN outcome = 'Pass Offside' THEN 'Pass Offside'
WHEN outcome = 'Unknown' THEN 'Unknown'
ELSE NULL
END AS pass_outcome,

CASE
WHEN shot_assist IS NULL THEN 0
WHEN shot_assist = 1 THEN 1
ELSE 0
END AS clean_shot_assist,

CASE
WHEN goal_assist IS NULL THEN 0
WHEN goal_assist = 1 THEN 1
ELSE 0
END AS clean_goal


FROM [Portfolio Project]..Pass$


--Query Starts Here
)
, rates

AS

(
SELECT pass_player AS player, ((CAST(attempted_dribbles AS FLOAT) + CAST(shots AS FLOAT) + CAST(attempted_passes AS FLOAT)) / (CAST(total_team_passes AS FLOAT) + CAST(total_team_dribbles AS FLOAT) + CAST(total_team_shots AS FLOAT)))*100 AS usage_rate
, ((CAST(positive_passes AS FLOAT) + CAST(shots AS FLOAT) + CAST(positive_dribbles AS FLOAT)) / ((CAST(attempted_dribbles AS FLOAT) + CAST(shots AS FLOAT) + CAST(attempted_passes AS FLOAT))))*100 AS postive_rate
FROM

(SELECT DISTINCT pass_player, 
 attempted_passes, total_team_passes, positive_passes, shots, total_team_shots, COUNT(d.outcome) AS attempted_dribbles, SUM(CASE WHEN d.outcome = 'Complete' THEN 1 ELSE 0 END) AS positive_dribbles, (SELECT COUNT(*) FROM [Portfolio Project]..Dribbles$ WHERE team = 'Arsenal WFC' AND outcome IS NOT NULL) AS total_team_dribbles

FROM

(SELECT DISTINCT p.player AS pass_player, s.player AS shot_player, attempted_passes,total_team_passes, positive_passes, COUNT(outcome) AS shots, (SELECT COUNT(*) FROM [Portfolio Project]..Shot$ WHERE team = 'Arsenal WFC') AS total_team_shots

FROM

(SELECT player, COUNT(pass_outcome) AS attempted_passes,SUM(CASE WHEN pass_outcome = 'completed' THEN 1 WHEN pass_outcome = 'Pass Offside' THEN 1 ELSE 0 END) AS positive_passes, (SELECT COUNT(pass_outcome) FROM passes WHERE team = 'Arsenal WFC') AS total_team_passes

FROM passes

WHERE team = 'Arsenal WFC' AND pass_outcome NOT IN ('Unknown')

GROUP BY player

) p

LEFT JOIN [Portfolio Project]..Shot$ AS s ON p.player = s.player



GROUP BY s.player, p.player, attempted_passes, total_team_passes, positive_passes



) sub2

LEFT JOIN [Portfolio Project]..Dribbles$ AS d ON d.player = sub2.pass_player

WHERE d.outcome IS NOT  NULL

GROUP BY d.player, pass_player, shot_player, attempted_passes, total_team_passes, positive_passes, shots, total_team_shots

) sub3


)

INSERT INTO [Portfolio Project]..player_percentages(

player, 
usage_rate, 
positive_rate

)

SELECT *

FROM rates






--CREATE TABLE [Portfolio Project]..player_percentages

--(

--Player nvarchar(256),

--Usage_Rate float,

--Positive_Rate float

--)

GO

CREATE VIEW dbo.player_usage_rates AS

SELECT player, Usage_Rate, Positive_Rate

FROM [Portfolio Project]..player_percentages


DROP VIEW player_usage_rates