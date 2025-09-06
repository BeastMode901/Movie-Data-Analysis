# Movie Data Analysis

## Project Overview
In this project, I explored a movie dataset using SQL to query and analyze key information, and then visualized the results with Tableau. Using SQL, I calculated profits, averaged revenues by genre, identified top-rated movies, tracked vote counts, and analyzed runtimes and production trends. The goal was to understand how movies perform, how audiences respond, and what patterns emerge across the industry, giving a clear picture of what makes a movie successful.

## Database
- **Table Name:** `Movie_Data`  
- **Columns:**  
  - `Movie_Title` – Title of the movie
  - `Vote_Average` – Average rating given by viewers  
  - `Vote_Count` – Total count of votes received for the movie
  - `Status` – The status of the movie
  - `Release_Date` – Release date of the movie  
  - `Revenue` – Total revenue generated  
  - `Runtime` – Duration of the movie in minutes  
  - `Adult` – Indicates if the movie is for adult audiences  
  - `Budget` – Budget allocated for the movie  
  - `Popularity` – Popularity score of the movie  
  - `Genre` – Genre of the movie  
  - `Production_Companies` – Production companies involved  
  - `Production_Countries` – Countries involved in production  

## Analysis Questions
The project answers the following analytical questions:  
1. Top 10 most profitable and bottom 10 least profitable movies
2. Top 5 movie genres by average revenue 
3.  What is the total net profit of movies produced exclusively in the United States?
4. Top 5 movies with the highest average viewer ratings
5. Top 5 movies with the lowest average viewer ratings  
6. Which movie genre produced the most films in the dataset?
7. Which movies have the longest and shortest runtime?
8. What are the top 5 movies with the most total votes? 
9. How many movies involved the United States?  
10. How many movies were released each year in the dataset?  

## Files Included
- **`Movie_Data.csv`** – Original dataset used to create table  
- **`Movie_Data.sql`** – SQL script to create the table from the CSV dataset  
- **`Movie_Analysis_Questions.sql`** – SQL queries corresponding to the analysis questions  
- **`Movie_Analysis_Solutions.sql`** – SQL scripts showing the results/solutions of the analysis queries  
- **`Movie_Analysis_Project.twb`** – Tableau workbook with dashboards and visualizations  

## Insights
- *Avatar* and *Avengers: Endgame* generated the highest profits, while *The Gray Man* was the least profitable.  
- The Adventure genre has the highest average revenue ($236M), followed by Action ($169M).  
- Over 4,000 movies involved the United States, with 3,326 produced exclusively there, generating a total net profit of $286B.  
- *The Godfather* holds the highest average viewer rating, while *Dragonball Evolution* has the lowest.  
- Drama is the most common genre with 1,255 movies produced.  
- Runtimes vary from *1900* (317 minutes) to *Luxo Jr.* (2 minutes).  
- *Inception* has the highest total vote count at 35K, with *The Avengers* ranking fifth at 29K.  
- Most movies were released in the 21st century, with 2018 being the peak year at 274 films.  
