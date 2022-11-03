-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS daria_characters;

CREATE TABLE daria_characters (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  url VARCHAR NOT NULL,
  episode_count INT NOT NULL
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
('Stacy', 'Rowe', 'https://static.wikia.nocookie.net/daria/images/0/04/D3923470-BAAD-46D0-A7EC-A00D4FC6B1BA.jpeg/revision/latest/scale-to-width-down/1000?cb=20181009144717', 41);


DROP TABLE IF EXISTS koth_characters;

CREATE TABLE koth_characters (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  url VARCHAR NOT NULL,
  age INT NOT NULL
);

INSERT INTO koth_characters (first_name, last_name, url, age)
VALUES 
('Bill', 'Dauterive', 'https://www.giantbomb.com/a/uploads/scale_small/0/7383/1812907-bill.jpg', 45),
('Hank', 'Hill', 'https://static.wikia.nocookie.net/kingofthehill/images/c/c4/Hank_Hill.png/revision/latest?cb=20140504043948', 45),
('Jeff', 'Boomhauer', 'https://static.wikia.nocookie.net/kingofthehill/images/b/be/Jeff_Boomhauer.png/revision/latest?cb=20151216222939', 45),
('John', 'Redcorn', 'https://static.wikia.nocookie.net/kingofthehill/images/5/5a/Redcorn1.jpeg/revision/latest/scale-to-width-down/1000?cb=20220901225612', 37),
('Lucky', 'Kleinschmidt', 'https://static.wikia.nocookie.net/kingofthehill/images/1/19/Lucky.jpeg/revision/latest?cb=20151004013744', 38),
('Dale', 'Gribble', 'https://static.wikia.nocookie.net/kingofthehill/images/a/a7/Dale_Gribble.png/revision/latest?cb=20131231145446', 42),
('Peggy', 'Hill', 'https://static.wikia.nocookie.net/kingofthehill/images/a/a7/Peggy-hill.jpg/revision/latest?cb=20190903170103', 44),
('Luanne', 'Platter', 'https://static.wikia.nocookie.net/kingofthehill/images/d/da/Luanne_Platter_-%29.jpg/revision/latest?cb=20221014211535', 21),
('Bobby', 'Hill', 'https://static.wikia.nocookie.net/kingofthehill/images/c/c7/Bobby.png/revision/latest?cb=20220825173943', 12);