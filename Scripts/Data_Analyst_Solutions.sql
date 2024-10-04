--1. How many rows are in the data_analyst_jobs table?

SELECT COUNT(*)
FROM data_analysts_jobs;

--Answer = 1793

--2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

SELECT *
FROM data_analysts_jobs
LIMIT 10;

--"Data Analyst"	"Tableau"	"Ace Technologies"	16	4.099999905	1	"FL"		"Internet and Software"
--"Junior Data Analyst"	"SQL"	"ThirdLove"	47	4	12	"CA"	"Less than 10,000"	"Consumer Goods and Services"
--"Data Analyst"	"Time Management| SQL"	"Optimove"			2	"NY"		
--"Data Analyst"	"SQL"	"Commonwealth of Massachusetts"	353	3.900000095	7	"MA"		"Government"
--"Data Analyst"	"Tableau"	"Ace Technologies"	16	4.099999905	2	"FL"		"Internet and Software"
--"Production Data Analyst"	"SQL"	"Wunderman"	197	3.900000095	5	"TX"		
--"Data Analyst"	"Tableau"	"Ace Technologies"	16	4.099999905	4	"FL"		"Internet and Software"
--"Research Data Analyst 2"	"Microsoft Powerpoint| R| Microsoft Office"	"UC DAVIS HEALTH SYSTEM"	196	4.099999905	1	--"CA"		"Education and Schools"
--"Loyalty Data Analyst"	"Visual Basic| Marketing| SAS| SQL| Microsoft Office"	"Safeway Corp."	190	3.5	5	"CA"		--"Retail"
--"XTO Land Data Analyst"	"Microsoft Office| Microsoft Access"	"ExxonMobil"	2234	4	5	"TX"	"10,000+"	------"Energy and Utilities"

SELECT *
FROM data_analysts_jobs
WHERE company = 'ExxonMobil'
LIMIT 10;

--"XTO Land Data Analyst"	"Microsoft Office| Microsoft Access"	"ExxonMobil"	2234	4	5	"TX"	"10,000+"	-------"Energy and Utilities"

--Answer: ExxonMobil

--3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

SELECT *
FROM data_analysts_jobs
WHERE location = 'TN';

--3,A) 21 jobs are posted in TN.

SELECT *
FROM data_analysts_jobs
WHERE location = 'TN' OR location = 'KY';

--3,B) 27 jobs are available in TN and KY.

--4, How many postings in Tennessee have a star rating above 4?

SELECT *
FROM data_analysts_jobs
WHERE location = 'TN' AND star_rating > '4';


--Answer; 3 posting are above rating above 4.

--5, How many postings in the dataset have a review count between 500 and 1000?

SELECT *
FROM data_analysts_jobs
WHERE review_count BETWEEN 500 AND 1000;

--Answer; 151 records are available which contain review_count between 500 to 1000.

--6, Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?

SELECT DISTINCT location AS state, AVG(star_rating) AS avg_rating
FROM data_analysts_jobs
WHERE star_rating IS NOT NULL
GROUP BY location 
ORDER BY AVG(star_rating) DESC
Limit 1;


--Answer: "NE"	4.1999998090000000

---------------------------------------

--7, Select unique job titles from the data_analyst_jobs table. How many are there.

SELECT DISTINCT title
FROM data_analysts_jobs;


--Answer; 881 unidue titles. 

--8, How many unique job titles are there for California companies?

SELECT DISTINCT title
FROM data_analysts_jobs
WHERE location = 'CA';

--Answer; 230

--9, Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

SELECT company, AVG(star_rating)
FROM data_analysts_jobs
WHERE review_count > 5000
GROUP BY company;

--Answer: 41 count with review rating above 5000

--10, Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

SELECT company, AVG(star_rating), review_count
FROM data_analysts_jobs
WHERE review_count > 5000 
GROUP BY company, review_count, star_rating
ORDER BY star_rating DESC
LIMIT 6;

--Answer: American Express, General Motors, Kaiser Permanente, Microsoft, Nike, Unilever were top 6 companies with top rating.

--11, Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 

SELECT COUNT(DISTINCT(title))
FROM data_analysts_jobs
WHERE title ilike '%Analyst%'

--11, 774 titles which contains word "Analyst"


--12, How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

SELECT title
FROM data_analysts_jobs
WHERE title NOT ILIKE '%Analytics%' 
AND title NOT ILIKE '%Analyst%';

--Answer: Tableau 





