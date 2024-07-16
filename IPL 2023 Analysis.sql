CREATE DATABASE IPL2023;
-- BATTING PERFORMANCE
-- 1. Select all data from the table

SELECT * FROM batting LIMIT 20;

-- 2. Get the total runs scored by each team
SELECT Team, SUM(Runs) as Total_Runs
FROM batting
GROUP BY Team;

-- 3. Get the total number of 4s and 6s hit by each team

SELECT Team, SUM(4s) AS Total_4s, SUM(6s) AS Total_6s
FROM batting
GROUP BY Team;

-- 4. Get the average strike rate of each team

SELECT Team, AVG(strike_Rate) AS Average_Strike_Rate
FROM batting
GROUP BY Team;

-- 5. Get the top 5 batsmen with the highest strike rate
SELECT Batsman, Strike_Rate
FROM batting
ORDER BY Strike_Rate DESC
LIMIT 5;

-- 6. Get the total runs scored by each batsman
SELECT Batsman, SUM(Runs) AS Total_Runs
FROM batting
GROUP BY Batsman;

-- 7.Get the highest individual score by a batsman
SELECT Batsman, MAX(Runs) AS Highest_Score
FROM batting
GROUP BY Batsman
ORDER BY Highest_Score DESC
LIMIT 1;

-- 8. Get the average runs per ball for each batsman
SELECT Batsman, AVG(Runs / Balls) AS Average_Runs_Per_Ball
FROM batting
GROUP BY Batsman;

-- 9. Get the list of batsmen who have scored more than 50 runs in an inning
SELECT Batsman, Runs
FROM batting
WHERE Runs >= 50 AND Runs < 100;

-- 10.Get the list of batsmen who have scored more than 50 runs in an inning
SELECT Batsman, Runs
FROM batting
WHERE Runs > 100;

-- BOWLING PERFORMANCE
-- 1. Select all data from the table
SELECT * FROM bowling;

-- 2. Get the total runs conceded by each bowler
SELECT Bowler, SUM(Run) AS Total_Runs_Conceded
FROM bowling
GROUP BY Bowler;

-- 3.Get the total wickets taken by each bowler
SELECT Bowler, SUM(Wicket) AS Total_Wickets
FROM bowling
GROUP BY Bowler;

-- 4. Get the average economy rate of each bowler
SELECT Bowler, AVG(ECON) AS Average_Economy_Rate
FROM bowling
GROUP BY Bowler
ORDER BY Average_Economy_Rate;

-- 5. Get the total number of maidens bowled by each bowler
SELECT Bowler, SUM(Maiden) AS Total_Maidens
FROM bowling
GROUP BY Bowler
ORDER BY Total_Maidens DESC;

-- 6. Get the number of wides and no-balls bowled by each bowler
SELECT Bowler, SUM(WD) AS Total_Wides, SUM(NB) AS Total_No_Balls
FROM bowling
GROUP BY Bowler;

-- 7. Get the top 5 bowlers with the highest number of wickets
SELECT Bowler, SUM(Wicket) AS Total_Wickets
FROM bowling
GROUP BY Bowler
ORDER BY Total_Wickets DESC
LIMIT 5;

-- 8. Get the total number of dot balls bowled by each bowler (TOP 10)
SELECT Bowler, SUM(0s) AS Total_Dot_Balls
FROM bowling
GROUP BY Bowler
ORDER BY Total_Dot_Balls DESC
LIMIT 10;

-- 9. Get the number of boundaries (4s and 6s) conceded by each bowler
SELECT Bowler, SUM(4s) AS Total_Fours_Conceded, SUM(6s) AS Total_Sixes_Conceded
FROM bowling
GROUP BY Bowler;

-- 10. Get the total deliveries bowled by each bowler (TOP 10)
SELECT Bowler, SUM(Deliveries) AS Total_Deliveries
FROM bowling
GROUP BY Bowler
ORDER BY Total_Deliveries DESC LIMIT 10;

-- 11. Get the bowler with the best economy rate
SELECT Bowler, MIN(ECON) AS Best_Economy_Rate
FROM bowling
GROUP BY Bowler
ORDER BY Best_Economy_Rate ASC
LIMIT 1;

-- 12. Get the total number of wicket bowled by each team
SELECT Team, SUM(Wicket) AS Total_Overs
FROM bowling
GROUP BY Team;

-- 13. Get the total runs conceded by each team
SELECT Team, SUM(Run) AS Total_Runs_Conceded
FROM bowling
GROUP BY Team;

-- 14.Get the number of maiden overs bowled in each match
SELECT Match_No, SUM(Maiden) AS Total_Maidens
FROM bowling
GROUP BY Match_No
ORDER BY Total_Maidens DESC;