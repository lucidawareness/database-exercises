-- select and display all columns for artist matching pink floyd
SELECT * from albums
where artist = 'Pink floyd';

-- select the year Sgt peppers lonely hearts club band was released
SELECT release_date from albums
where album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- select the genre for Nevermind
SELECT genre from albums
where album_name = 'Nevermind';

-- select all albums released in the 1990s
SELECT * from albums
where release_date BETWEEN 1990 AND 1999;

--  select all albums with less than 20 million in certified sales
SELECT * from albums
where sales BETWEEN 0 and 20;

-- select all albums with genre of rock
SELECT * from albums
where genre = 'rock';