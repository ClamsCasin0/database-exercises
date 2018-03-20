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


