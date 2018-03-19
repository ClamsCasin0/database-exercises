USE codeup_test_db;

SELECT name, 'Yes' AS 'Is an album by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT artist, name, release_date, '1967' AS 'The year the Beatles released Sgt. Pepper''s' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre, 'Grunge, Alt rock' AS 'The genre for Nirvana''s ''Nevermind''' FROM albums WHERE name = 'Nevermind';

SELECT name, artist, release_date, 'Yes' AS 'Was the album released during the ''90''s' FROM albums WHERE release_date BETWEEN '1990' and '1999';

SELECT artist, name, sales, 'Yes' AS 'Did the album have less than 20 million sales' FROM albums WHERE sales <= '20000000';

SELECT artist, name, genre, 'Yes' As 'Falls into the genre ''Rock''' FROM albums WHERE genre LIKE '%Rock%';