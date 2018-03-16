USE codeup_test_db;

SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT *, 'Yes' AS 'Was the Album released before 1980?' FROM albums WHERE release_date <= '1980';

UPDATE quotes
SET author_first_name = 'Samuel', author_last_name = 'Clemens'
WHERE id = 4;


SELECT *, 'Yes' AS 'Did Micheal Jackson make this?' FROM albums WHERE artist = 'Micheal Jackson';

UPDATE quotes
SET author_first_name = 'Samuel', author_last_name = 'Clemens'
WHERE id = 4;

