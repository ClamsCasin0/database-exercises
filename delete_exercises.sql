USE codeup_test_db;

DELETE FROM albums WHERE release_date > '1991';

DELETE FROM albums WHERE genre LIKE '%Disco%';

DELETE FROM albums WHERE artist = 'Whitney Houston';




