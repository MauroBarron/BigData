--
-- Module 16 Challenge. Are the Vine reviews biased? Review and analyze the vine_table.
--

-- Data Familiarization

-- FIELDS
-- review_id -text
-- star_rating -int       - The 1-5 star rating of the review.
-- helpful_votes -int 	  - Number of helpful votes.
-- total_votes  - int     - Number of total votes the review received.
-- vine                   - Review was written as part of the Vine program.


SELECT COUNT(*) FROM vine_table;  -- 2302401 rows

-- Count by vine review.  2.3 million yes.  3K no.  its all N. 
SELECT vt.vine, COUNT(vt.vine) FROM vine_table vt WHERE vine is not null
GROUP BY vt.vine;

-- Percentage of Reviews that are wine. 
SELECT (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine is not  null); 

-- 5 Star Rating Counts
SELECT vt.vine, vt.star_rating, COUNT(vt.star_rating) FROM vine_table vt WHERE vine is not null and star_rating = '5'
GROUP BY vt.vine, star_rating;


-- 5 Star Percentages by vine

SELECT vt.vine, vt.star_rating
	, COUNT(vt.star_rating)
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y' and star_rating='5') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y') AS PercentVineYes
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N' and star_rating='5') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N') AS PercentVineNo
FROM vine_table vt WHERE vine is not null and star_rating = '5'
GROUP BY vt.vine, vt.star_rating;


-- 4 Star Percentages by vine

SELECT vt.vine, vt.star_rating
	, COUNT(vt.star_rating)
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y' and star_rating='4') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y') AS PercentVineYes
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N' and star_rating='4') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N') AS PercentVineNo
FROM vine_table vt WHERE vine is not null and star_rating = '4'
GROUP BY vt.vine, vt.star_rating;

-- 3 Star Percentages by vine

SELECT vt.vine, vt.star_rating
	, COUNT(vt.star_rating)
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y' and star_rating='3') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y') AS PercentVineYes
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N' and star_rating='3') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N') AS PercentVineNo
FROM vine_table vt WHERE vine is not null and star_rating = '3'
GROUP BY vt.vine, vt.star_rating;


-- 2 Star Percentages by vine

SELECT vt.vine, vt.star_rating
	, COUNT(vt.star_rating)
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y' and star_rating='2') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y') AS PercentVineYes
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N' and star_rating='2') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N') AS PercentVineNo
FROM vine_table vt WHERE vine is not null and star_rating = '2'
GROUP BY vt.vine, vt.star_rating;


-- 1 Star Rating Counts
SELECT vt.vine, vt.star_rating, COUNT(vt.star_rating) FROM vine_table vt WHERE vine is not null and star_rating = '1'
GROUP BY vt.vine, star_rating;


-- 1 Star Percentages by vine
SELECT vt.vine, vt.star_rating
	, COUNT(vt.star_rating)
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y' and star_rating='1') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'Y') AS PercentVineYes
	,(SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N' and star_rating='1') / (SELECT CAST(COUNT(vt.vine) as float) FROM vine_table vt WHERE vine = 'N') AS PercentVineNo
FROM vine_table vt WHERE vine is not null and star_rating = '1'
GROUP BY vt.vine, vt.star_rating;


-- Mean Star Rating Counts
SELECT vt.vine,  AVG(vt.star_rating) FROM vine_table vt WHERE vine is not null 
GROUP BY vt.vine;

-- Helpful Votes

SELECT vt.vine, COUNT(vt.helpful_votes) FROM vine_table vt WHERE vine is not null
GROUP BY vt.vine;


-- Total Votes
SELECT vt.vine, COUNT(vt.total_votes) FROM vine_table vt WHERE vine is not null
GROUP BY vt.vine;
