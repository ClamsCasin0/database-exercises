USE codeup_test_db;

SHOW TABLES;

SELECT * FROM albums;

# had to DELETE a few entries that would give MUL
# and not allow UNI key for both artist and name
# DELETE FROM albums
# WHERE id = '26';

ALTER TABLE albums
  ADD UNIQUE (artist, name);

DESCRIBE albums;


