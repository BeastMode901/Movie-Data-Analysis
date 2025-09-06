-- Movie Data Analysis by Collins Mensah

-- Movie Data Table
CREATE TABLE Movie_Data (
		Movie_Title VARCHAR(100),
        Vote_Average DECIMAL(10,2),
        Vote_Count INT,
        Status VARCHAR(100),
        Release_Date DATE,
        Revenue DECIMAL (20,2),
        Runtime INT,
        Adult VARCHAR(100),
        Budget DECIMAL(20,2),
        Popularity DECIMAL(10,2),
        Genre VARCHAR(100),
        Production_Companies VARCHAR(500),
        Production_Countries VARCHAR(500)
					);
				
-- Columns Description:
		-- Movie_Title = Title of the movie.
		-- Vote_Average = Average rating given by viewers.
		-- Vote_Count = Total count of votes received for the movie.
		-- Status = The status of the movie.
		-- Release_Date = Release date of the movie.
		-- Revenue = Total revenue generated. 
		-- Runtime = Duration of movie in minutes.  
		-- Adult = Indicates if the movie is for adult audiences.  
		-- Budget = Budget allocated for the movie.  
		-- Popularity = Popularity score of the movie.  
		-- Genre = Genre of the movie.
		-- Production_Companies = Production companies involved.  
		-- Production_Countries= Countries involved in production. 