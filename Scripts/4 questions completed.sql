--1. How many rows are in the data_analyst_jobs table?

SELECT COUNT(*)
FROM data_analysts_jobs;

--Answer = 1793

--2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

SELECT *
FROM data_analysts_jobs
LIMIT 100;

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

--2. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

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





