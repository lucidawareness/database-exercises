-- albums released before 1991
DELETE from albums
where release_date between 0 and 1990;

SELECT * from albums
where release_date between 0 and 1990;

-- albums with genre disco
DELETE from albums
where genre = 'disco';

SELECT * from albums
where genre = 'disco';

-- albums by whitney houston
DELETE from albums
where artist = 'whitney houston';

SELECT * from albums
where artist = 'whitney houston';
