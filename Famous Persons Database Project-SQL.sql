CREATE DATABASE ENTERTAINMENT_HUB;

USE ENTERTAINMENT_HUB;
CREATE TABLE FamousPeople (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    birthdate DATE,
    nationality VARCHAR(50),
    profession VARCHAR(50)
);

INSERT INTO FamousPeople (name, birthdate, nationality, profession) VALUES
('Sarkodie', '1985-07-10', 'Ghanaian', 'Singer'),
('Jackie Appiah', '1983-12-05', 'Ghanaian', 'Actor'),
('Shatta Wale', '1984-10-17', 'Ghanaian', 'Singer'),
('Yvonne Nelson', '1985-11-12', 'Ghanaian', 'Actor'),
('Stonebwoy', '1988-03-05', 'Ghanaian', 'Singer'),
('Lydia Forson', '1984-10-24', 'Ghanaian', 'Actor'),
('Kwesi Arthur', '1994-12-18', 'Ghanaian', 'Singer'),
('John Dumelo', '1984-02-03', 'Ghanaian', 'Actor'),
('Efya', '1987-04-10', 'Ghanaian', 'Singer'),
('Majid Michel', '1980-09-22', 'Ghanaian', 'Actor'),
('M.anifest', '1982-11-20', 'Ghanaian', 'Singer'),
('Nadia Buari', '1982-11-21', 'Ghanaian', 'Actor'),
('Kidi', '1993-08-18', 'Ghanaian', 'Singer'),
('Joselyn Dumas', '1980-08-31', 'Ghanaian', 'Actor'),
('Samini', '1981-12-22', 'Ghanaian', 'Singer');

CREATE TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    release_year YEAR,
    genre VARCHAR(50),
    director VARCHAR(100)
);

INSERT INTO Movies (title, release_year, genre, director) VALUES
('The Perfect Picture', 2009, 'Romance', 'Shirley Frimpong-Manso'),
('Beasts of No Nation', 2015, 'Drama', 'Cary Joji Fukunaga'),
('Somewhere in Africa', 2011, 'Drama', 'Frank Rajah Arase'),
('4Play', 2010, 'Drama', 'Frank Rajah Arase'),
('Potomanto', 2013, 'Thriller', 'Shirley Frimpong-Manso'),
('Sidechic Gang', 2018, 'Comedy', 'Peter Sedufia'),
('Keteke', 2017, 'Comedy', 'Peter Sedufia'),
('Adams Apples', 2011, 'Drama', 'Shirley Frimpong-Manso'),
('The Burial of Kojo', 2018, 'Drama', 'Blitz Bazawule'),
('Azali', 2018, 'Drama', 'Kwabena Gyansah'),
('The Cursed Ones', 2015, 'Drama', 'Nana Obiri-Yeboah'),
('Sinking Sands', 2010, 'Drama', 'Leila Djansi'),
('A Northern Affair', 2014, 'Romance', 'Leila Djansi'),
('The CEO', 2016, 'Thriller', 'Kunle Afolayan'),
('Silver Rain', 2015, 'Drama', 'Juliet Asante');

CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    release_year YEAR,
    genre VARCHAR(50),
    album VARCHAR(100)
);

INSERT INTO Songs (title, release_year, genre, album) VALUES
('Adonai', 2014, 'Gospel', 'Sarkology'),
('My Level', 2018, 'Dancehall', 'Reign'),
('Baafira', 2014, 'Dancehall', 'Necessary Evil'),
('Angela', 2017, 'Afrobeats', 'N/A'),
('Woara', 2018, 'Afrobeats', 'Live From Nkrumah Krom'),
('Kpo K3k3', 2018, 'Dancehall', 'Epistles of Mama'),
('Grind Day', 2017, 'Hip-Hop', 'Live From Nkrumah Krom'),
('Too Risky', 2016, 'Afrobeats', 'N/A'),
('Odo', 2017, 'Afrobeats', 'Sugar'),
('Wish Me Well', 2018, 'Afrobeats', 'N/A'),
('Confusion', 2018, 'Afrobeats', 'N/A'),
('Obiaa Wone Master', 2018, 'Afrobeats', 'N/A'),
('Bra', 2019, 'Afrobeats', 'N/A'),
('Nothing I Get', 2019, 'Afrobeats', 'N/A'),
('Sugarcane', 2022, 'Afrobeats', 'N/A');

CREATE TABLE TVShows (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    release_year YEAR,
    genre VARCHAR(50),
    network VARCHAR(100)
);

INSERT INTO TVShows (title, release_year, genre, network) VALUES
('YOLO', 2016, 'Drama', 'Farmhouse Productions'),
('Things We Do for Love', 2000, 'Drama', 'GTV'),
('Sun City', 2003, 'Drama', 'GTV'),
('Inspector Bediako', 1993, 'Crime', 'GTV'),
('Efiewura', 2001, 'Comedy', 'TV3'),
('Home Sweet Home', 2003, 'Drama', 'GTV'),
('Tentacles', 2000, 'Drama', 'GTV'),
('Taxi Driver', 1998, 'Comedy', 'GTV'),
('Dede', 2021, 'Drama', 'Akwaaba Magic'),
('Sadia', 2018, 'Drama', 'TV3'),
('The Republic', 2017, 'Drama', 'Viasat 1'),
('Peep', 2011, 'Drama', 'Viasat 1'),
('XOXO', 2012, 'Drama', 'Viasat 1'),
('Heels and Sneakers', 2016, 'Drama', 'MTV Base'),
('Shampaign', 2016, 'Drama', 'Viasat 1');

CREATE TABLE Awards (
    award_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(100),
    year YEAR,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES FamousPeople(person_id)
);

INSERT INTO Awards (name, category, year, person_id) VALUES
('VGMA', 'Artist of the Year', 2010, 1),
('VGMA', 'Best New Artist', 2018, 7),
('VGMA', 'Best Male Vocalist', 2015, 5),
('VGMA', 'Best Female Vocalist', 2016, 9),
('VGMA', 'Best Collaboration', 2017, 3),
('VGMA', 'Best Rapper', 2018, 1),
('VGMA', 'Song of the Year', 2019, 13),
('VGMA', 'Album of the Year', 2020, 1),
('VGMA', 'Best Group', 2014, 15),
('VGMA', 'Best Music Video', 2015, 11),
('VGMA', 'Best Highlife Song', 2016, 13),
('VGMA', 'Best Hiplife Song', 2017, 3),
('VGMA', 'Best Reggae/Dancehall Song', 2018, 5),
('VGMA', 'Best Gospel Song', 2019, 1),
('VGMA', 'Best African Artist', 2020, 1),
('3Music Awards', 'Artist of the Year', 2024, 5),
('3Music Awards', 'Best Male Act', 2023, 1),
('3Music Awards', 'Best Female Act', 2023, 9),
('3Music Awards', 'Song of the Year', 2022, 3),
('3Music Awards', 'Album of the Year', 2021, 5),
('3Music Awards', 'Best Collaboration', 2020, 13),
('3Music Awards', 'Best Rap Performance', 2022, 1),
('3Music Awards', 'Breakthrough Act of the Year', 2024, 7),
('3Music Awards', 'Best Music Video', 2023, 11),
('3Music Awards', 'Best Producer', 2024, 15),
('3Music Awards', 'Best Gospel Song', 2023, 1),
('3Music Awards', 'Best African Act', 2024, 1),
('3Music Awards', 'Best Highlife Song', 2023, 13),
('3Music Awards', 'Best Hiplife Song', 2022, 3),
('Ghana Movie Awards', 'Best Actor in a Leading Role', 2015, 2),
('Ghana Movie Awards', 'Best Actress in a Leading Role', 2016, 4),
('Ghana Movie Awards', 'Best Director', 2017, 8),
('Ghana Movie Awards', 'Best Picture', 2018, 10),
('Ghana Movie Awards', 'Best Supporting Actor', 2019, 12),
('Ghana Movie Awards', 'Best Supporting Actress', 2020, 6),
('Ghana Movie Awards', 'Best Cinematography', 2021, 14),
('Ghana Movie Awards', 'Best Screenplay', 2022, 2),
('Ghana Movie Awards', 'Best Editing', 2023, 4);

CREATE TABLE Contributions (
    contribution_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    media_type VARCHAR(50),
    media_id INT,
    role VARCHAR(100),
    FOREIGN KEY (person_id) REFERENCES FamousPeople(person_id)
);

INSERT INTO Contributions (person_id, media_type, media_id, role) VALUES
(2, 'Movie', 1, 'Lead Actor'),
(2, 'Movie', 2, 'Lead Actor'),
(4, 'Movie', 3, 'Lead Actor'),
(4, 'Movie', 4, 'Lead Actor'),
(6, 'Movie', 5, 'Lead Actor'),
(6, 'Movie', 6, 'Lead Actor'),
(2, 'Movie', 7, 'Lead Actor'),
(1, 'Song', 1, 'Singer'),
(3, 'Song', 2, 'Singer'),
(5, 'Song', 3, 'Singer'),
(7, 'Song', 4, 'Singer'),
(7, 'Song', 5, 'Singer'),
(5, 'Song', 6, 'Singer'),
(7, 'Song', 7, 'Singer'),
(2, 'TVShow', 1, 'Lead Actor'),
(4, 'TVShow', 2, 'Lead Actor');


### ALL AWARDS WON BY SARKODIE
SELECT a.name, a.category, a.year
FROM awards a
JOIN FamousPeople fp ON a.person_id = fp.person_id
WHERE fp.name = 'Sarkodie';

###ALL AWARDS WON BY JACKIE APPIAH
SELECT a.name, a.category, a.year
FROM awards a
JOIN FamousPeople fp ON a.person_id = fp.person_id
WHERE fp.name = 'Jackie Appiah';

### ALL SONGS THAT HAVE WON AN AWARD
SELECT s.title, a.name AS AwardName, a.year
FROM Songs s
JOIN Contributions c ON s.song_id = c.media_id
JOIN Awards a ON c.person_id = a.person_id
WHERE c.media_type = 'Song';

### ALL MOVIES THAT HAVE WON AN AWARD
SELECT m.title, a.name AS AwardName, a.category, a.year
FROM Movies m
JOIN Contributions c ON m.movie_id = c.media_id
JOIN Awards a ON c.person_id = a.person_id
WHERE c.media_type = 'Movie';

### ALL MOVIES DIRECTED BY A SPECIFIC DIRECTOR
SELECT m.title
FROM Movies m
WHERE m.director = '%Frimpong-Manso';

SELECT m.title
FROM Movies m
WHERE m.director = 'Shirley Frimpong-Manso';

### SONGS FEATURING SARKODIE AND SHATTA WALE
SELECT s.title
FROM Songs s
JOIN Contributions c1 ON s.song_id = c1.media_id
JOIN Contributions c2 ON s.song_id = c2.media_id
JOIN FamousPeople fp1 ON c1.person_id = fp1.person_id
JOIN FamousPeople fp2 ON c2.person_id = fp2.person_id
WHERE fp1.name = 'Sarkodie' AND fp2.name = 'Shatta Wale' AND c1.media_type = 'Song' AND c2.media_type = 'Song';

### MOST AWARDED PERSON
SELECT fp.name, COUNT(a.award_id) AS AwardCount
FROM Awards a
JOIN FamousPeople fp ON a.person_id = fp.person_id
GROUP BY fp.name
ORDER BY AwardCount DESC
LIMIT 1;

###AWARDS WON BY ACTORS IN A SPECIFIC CATEGORY
SELECT fp.name, a.name AS AwardName, a.year
FROM Awards a
JOIN FamousPeople fp ON a.person_id = fp.person_id
WHERE a.category = 'Best Actor in a Leading Role';

### ALL SONGS AND MOVIES RELEASED IN A SPECIFIC YEAR (2018)
SELECT s.title AS MediaTitle, 'Song' AS MediaType
FROM Songs s
WHERE s.release_year = 2018
UNION
SELECT m.title AS MediaTitle, 'Movie' AS MediaType
FROM Movies m
WHERE m.release_year = 2018;

### ALL TV SHOWS THAT WON AN AWARD
SELECT ts.title, a.name AS AwardName, a.year
FROM TVShows ts
JOIN Contributions c ON ts.show_id = c.media_id
JOIN Awards a ON c.person_id = a.person_id
WHERE c.media_type = 'TVShow';

### ALL CONTRIBUTIONS MADE BY FEMALE ARTIST
SELECT fp.name, c.media_type, c.role
FROM FamousPeople fp
JOIN Contributions c ON fp.person_id = c.person_id
WHERE fp.profession = 'Actor' OR fp.profession = 'Singer';

### CONTRIBUTION OF SPECIFIC PEOPLE ACCROSS TWO MEDIA TYPES(MOVIES, SONGS)
SELECT m.title AS MediaTitle, 'Movie' AS MediaType, c.role
FROM Movies m
JOIN Contributions c ON m.movie_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Efya' AND c.media_type = 'Movie'
UNION
SELECT s.title AS MediaTitle, 'Song' AS MediaType, c.role
FROM Songs s
JOIN Contributions c ON s.song_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Efya' AND c.media_type = 'Song';

### ACROSS ALL 3 MEIDA
SELECT m.title AS MediaTitle, 'Movie' AS MediaType, c.role
FROM Movies m
JOIN Contributions c ON m.movie_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Kwesi Arthur' AND c.media_type = 'Movie'
UNION
SELECT s.title AS MediaTitle, 'Song' AS MediaType, c.role
FROM Songs s
JOIN Contributions c ON s.song_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Kwesi Arthur' AND c.media_type = 'Song'
UNION
SELECT ts.title AS MediaTitle, 'TV Show' AS MediaType, c.role
FROM TVShows ts
JOIN Contributions c ON ts.show_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Kwesi Arthur' AND c.media_type = 'TVShow';

### ACCROSS TWO MEDIA TYPES(MOVIES, TV SHOWS)
SELECT m.title AS MediaTitle, 'Movie' AS MediaType, c.role
FROM Movies m
JOIN Contributions c ON m.movie_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Jackie Appiah' AND c.media_type = 'Movie'
UNION
SELECT ts.title AS MediaTitle, 'TV Show' AS MediaType, c.role
FROM TVShows ts
JOIN Contributions c ON ts.show_id = c.media_id
JOIN FamousPeople fp ON c.person_id = fp.person_id
WHERE fp.name = 'Jackie Appiah' AND c.media_type = 'TVShow';

### MOVIES WITH MULTIPLE AWARDS
SELECT m.title, COUNT(a.award_id) AS AwardCount
FROM Movies m
JOIN Contributions c ON m.movie_id = c.media_id
JOIN Awards a ON c.person_id = a.person_id
WHERE c.media_type = 'Movie'
GROUP BY m.title
HAVING COUNT(a.award_id) > 1;

###TV SHOWS WITH ONE OR MULTIPLE AAWARDS
SELECT ts.title, COUNT(a.award_id) AS TotalAwardCount
FROM TVShows ts
JOIN Contributions c ON ts.show_id = c.media_id
JOIN Awards a ON c.person_id = a.person_id
WHERE c.media_type = 'TVShows'
GROUP BY ts.title
HAVING COUNT(a.award_id) >= 1;

### MOST POPULAR GENRE
SELECT genre, COUNT(*) AS Count
FROM (
    SELECT genre FROM Movies
    UNION ALL
    SELECT genre FROM Songs
) AS AllGenres
GROUP BY genre
ORDER BY Count DESC;

### TV SHOWS AND MOVIES DIRECTED BY ONE PERSON
SELECT fp.name, m.title AS MovieTitle, ts.title AS TVShowTitle
FROM FamousPeople fp
JOIN Contributions c1 ON fp.person_id = c1.person_id
JOIN Movies m ON c1.media_id = m.movie_id AND c1.media_type = 'Movie' AND c1.role = 'Director'
JOIN Contributions c2 ON fp.person_id = c2.person_id
JOIN TVShows ts ON c2.media_id = ts.show_id AND c2.media_type = 'TVShow' AND c2.role = 'Director';


SELECT*
FROM Movies; 

SELECT*
FROM Songs;

SELECT*
FROM FamousPeople;

SELECT*
FROM TVShows; 










