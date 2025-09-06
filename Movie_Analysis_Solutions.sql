-- Movie Analysis Solutions

-- 1. Top 10 most profitable and bottom 10 least profitable movies
		SELECT * 
		FROM (
		    SELECT Movie_Title, release_date,  Revenue - Budget AS Net_Result,
		           CASE WHEN Revenue - Budget > 0 THEN 'Profit' ELSE 'Loss' END AS Profit_Or_Loss
		    FROM Movie_Data
		    WHERE Revenue IS NOT NULL
		    ORDER BY Net_Result DESC
		    LIMIT 10
		) AS TOP_10_Profit
		UNION ALL
		SELECT * 
		FROM (
		    SELECT Movie_Title, release_date, Revenue - Budget AS Net_Result,
		           CASE WHEN Revenue - Budget > 0 THEN 'Profit' ELSE 'Loss' END AS Profit_Or_Loss
		    FROM Movie_Data
		    WHERE Revenue IS NOT NULL
		    ORDER BY Net_Result ASC
		    LIMIT 10
		) AS Top_10_Loss;

-- 2. Top 5 movie genres by average revenue
		SELECT Genre, ROUND(AVG(Revenue), 2) AS AVG_Revenue
		FROM Movie_Data
		WHERE Genre IS NOT NULL AND Revenue IS NOT NULL
		GROUP BY Genre
		ORDER BY AVG_Revenue DESC
		LIMIT 5;

-- 3. What is the total net profit of movies produced exclusively in the United States?
		SELECT Count(*) AS Total_Movies, SUM(Revenue - Budget) AS Total_Net_Profit
		FROM Movie_Data
		WHERE Production_Countries = 'United States of America';

-- 4. Top 5 movies with the highest average viewer ratings
		SELECT Movie_Title, Vote_Average AS Average_Viewer_Vote
		FROM Movie_Data
		WHERE Vote_Average IS NOT NULL
		ORDER BY Vote_Average DESC
		LIMIT 5;

-- 5. Top 5 movies with the lowest average viewer ratings
		SELECT Movie_Title, Vote_Average AS Average_Viewer_Vote
		FROM Movie_Data
		WHERE Vote_Average IS NOT NULL
		ORDER BY Vote_Average ASC
		LIMIT 5;

-- 6. Which movie genre produced the most films in the dataset?
		SELECT Genre, COUNT(*) AS Total_Count
		FROM Movie_Data
		GROUP BY Genre
		ORDER BY Total_Count DESC
		LIMIT 1;
		
-- 7. Which movies have the longest and shortest runtime?
		SELECT Movie_Title, Runtime AS Runtime_in_Minutes
		FROM Movie_Data
		WHERE Runtime = (SELECT MAX(Runtime) FROM Movie_Data)
		UNION ALL
		SELECT Movie_Title, Runtime AS Runtime_in_Minutes
		FROM Movie_Data
		WHERE Runtime = (SELECT MIN(Runtime) FROM Movie_Data);

-- 8. What are the top 5 movies with the most total votes?
		SELECT Movie_Title, Vote_Count
		FROM Movie_Data
		ORDER BY Vote_Count DESC
		LIMIT 5;

-- 9.  How many movies involved the United States?  
		SELECT Count(*) AS Total_Movie_Count 
		FROM Movie_Data
		WHERE Production_Countries LIKE ('%United States of America%');

-- 10. How many movies were released each year in the dataset?  
		SELECT EXTRACT(YEAR FROM Release_Date) AS Release_Year, COUNT(*) AS Total_Movies
		FROM Movie_Data
		GROUP BY Release_Year
		ORDER BY Total_Movies DESC;