SELECT title, duration
FROM tracks 
ORDER BY duration DESC 
LIMIT 1


SELECT title
FROM tracks 
WHERE duration >= 230


SELECT title 
FROM compilations 
WHERE release_year BETWEEN 2018 AND 2020


SELECT name
FROM artists
WHERE name NOT LIKE '% %';


SELECT title
FROM tracks 
WHERE title LIKE '%Мой%' OR title LIKE '%My%';


SELECT g.name AS genre_name, COUNT(DISTINCT ag.artist_id) AS artist_count
FROM Genres g
LEFT JOIN Artists_Genres ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_id, g.name
ORDER BY g.name;


SELECT a.title AS album_title, COUNT(t.track_id) AS track_count
FROM Albums a
LEFT JOIN Tracks t ON a.album_id = t.album_id
WHERE a.release_year BETWEEN 2019 AND 2020
GROUP BY a.album_id, a.title
ORDER BY a.title;


SELECT a.title AS album_title, AVG(t.duration) AS average_duration
FROM Albums a
LEFT JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.album_id, a.title
ORDER BY a.title;


SELECT ar.name AS artist_name
FROM Artists ar
LEFT JOIN Albums_Artists aa ON ar.artist_id = aa.artist_id
LEFT JOIN Albums a ON aa.album_id = a.album_id AND a.release_year = 2020
WHERE a.album_id IS NULL
ORDER BY ar.name;


SELECT DISTINCT c.title AS compilation_title
FROM Compilations c
JOIN Albums a ON c.compilation_id = a.album_id 
JOIN Albums_Artists aa ON a.album_id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Radiohead'
ORDER BY c.title;