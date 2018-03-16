USE codeup_test_db;

SELECT name, 'Yes' AS 'Is an album by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date, '1967' AS 'The year the Beatles released Sgt. Pepper''s' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre, 'Grunge, Alt rock' AS 'The genre for Nirvana''s ''Nevermind''' FROM albums WHERE name = 'Nevermind';

SELECT name, artist, 'Yes' AS 'Albums released after 1990' FROM albums WHERE release_date >= '1990';

SELECT name, artist, 'Yes' AS 'Did the album have less than 20 million sales' FROM albums WHERE sales <= '20000000';

SELECT name, artist, 'Yes' As 'Has the genre ''Rock''' FROM albums WHERE genre = 'Rock';