USE codeup_test_db;
#  1/a
SELECT * FROM albums;
# 1/b
UPDATE albums
SET sales = sales * 10;
# 1/c
SELECT sales FROM albums;

# 2/a
SELECT *, 'Yes' AS 'Was the Album released before 1980?' FROM albums WHERE release_date <= '1980';
# 2/b
UPDATE albums
SET release_date = '1800'
WHERE release_date <= '1980';
# 2/c
SELECT artist, name, release_date FROM albums WHERE release_date = '1800';

# 3/a
SELECT *, 'Yes' AS 'Did Micheal Jackson make this?' FROM albums WHERE artist = 'Micheal Jackson';
# 3/b
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson';
# 3/c
SELECT * FROM albums WHERE artist = 'Peter Jackson';
