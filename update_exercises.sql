-- select all albums in table
SELECT * from albums;

-- update sales times 10
UPDATE albums
SET sales = (sales * 10);

-- select all albums released before 1980
SELECT * from albums
where release_date between 0 and 1979;

-- update all albums released before 1980 to 1800s
UPDATE albums
SET release_date = (release_date - 100)
where release_date between 0 and 1979;

-- select all albums by Michael Jackson
SELECT * from albums
where artist = 'michael jackson';

-- change Michael Jackson to Peter Jackson
UPDATE albums
SET artist = 'Peter Jackson'
where artist = 'michael jackson';

