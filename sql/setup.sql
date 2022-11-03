-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS daria_characters;

CREATE TABLE daria_characters (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  url VARCHAR NOT NULL,
  episode_count INT NOT NULL,
);

INSERT INTO daria_characters (first_name, last_name, url, episode_count)
VALUES 
('Daria', 'Morgendorffer', 'https://static.wikia.nocookie.net/daria/images/e/eb/Dariacropped1.png/revision/latest?cb=20200815015432', 65),
('Quinn', 'Morgendorffer', 'https://static.wikia.nocookie.net/daria/images/8/8a/Quinn_morgendorffer.jpeg/revision/latest?cb=20210322142159', 65),
('Jane', 'Lane', 'https://static.wikia.nocookie.net/daria/images/a/a6/Janecropped2.png/revision/latest?cb=20210919203350', 65),
('Tom', 'Sloane', 'https://static.wikia.nocookie.net/daria/images/7/71/Gallery-1471290775-elle-daria-tom-sloane-mtv.jpg/revision/latest?cb=20190522014805', 20),
('Helen', 'Morgendorffer', 'https://static.wikia.nocookie.net/daria/images/3/37/Helencropped.png/revision/latest?cb=20211119012422', 63),
('Brittany', 'Taylor', 'https://static.wikia.nocookie.net/daria/images/9/9b/Brittany-colbor.png/revision/latest?cb=20190518195307', 54),
('Kevin', 'Thompson', 'https://static.wikia.nocookie.net/daria/images/6/65/Kevin_Thompson.jpg/revision/latest?cb=20080625001956', 53),
('Stacy', 'Rowe', 'https://static.wikia.nocookie.net/daria/images/0/04/D3923470-BAAD-46D0-A7EC-A00D4FC6B1BA.jpeg/revision/latest/scale-to-width-down/1000?cb=20181009144717', 41),
