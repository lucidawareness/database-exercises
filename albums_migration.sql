DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album_name VARCHAR(50) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT(2) UNSIGNED NOT NULL,
    genre VARCHAR(50) UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);