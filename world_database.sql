USE world;

SHOW tables;

# quick ref queries
SELECT * FROM country;
select * from countrylanguage;
SELECT * FROM city;


# 1
SELECT Language, Percentage
FROM countrylanguage
WHERE CountryCode = "USA"
ORDER BY Percentage;


# 2
SELECT Region, COUNT(name) AS 'num_countries'
FROM country
GROUP BY Region
ORDER BY num_countries;

# 3
SELECT Region, SUM(Population) AS Population
FROM country
GROUP BY Region
ORDER BY Population DESC;

# 4
SELECT Continent, SUM(Population) AS Population
FROM country
GROUP BY Continent
ORDER BY Population DESC;

# 5
SELECT AVG(LifeExpectancy) AS 'avg(LifeExpectancy)'
FROM country;

# 6 What is the average life expectancy for each region,
#  each continent? Sort the results from shortest to longest
# 6 a
SELECT Continent, AVG(LifeExpectancy) AS 'life_expectancy'
FROM country
GROUP BY Continent
ORDER BY life_expectancy;

# 6 b
SELECT Region, AVG(LifeExpectancy) AS 'life_expectancy'
FROM country
GROUP BY Region
ORDER BY life_expectancy;

# BONUS
#a Find all the countries whose local name is different
#a from the official name.
SELECT name, LocalName
FROM country
WHERE LocalName NOT LIKE name;

#b How many countries have a life expectancy less than x?
USE world_x;

SHOW TABLES;

SELECT * FROM city
WHERE Name LIKE '%X%';




#c What state is city x located in?

#d What region of the world is city x located in?

#e What country (use the human readable name) city x located in?

#f What is the life expectancy in city x?
