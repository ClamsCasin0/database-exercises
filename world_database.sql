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

