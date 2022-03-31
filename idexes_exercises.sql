ALTER TABLE albums
ADD UNIQUE (album_name, artist);

DESCRIBE albums;