INSERT INTO Artists (name)
VALUES 
(
    'The Beatles'
), 
(
    'Radiohead'
), 
(
    'Kendrick Lamar'
), 
(
    'Amy Winehouse'
), 
(
    'Kanye West'
);


INSERT INTO Genres (name)
VALUES 
(
	'pop'
),
(
	'rock'
),
(
	'hip-hop'
),
(
	'reggie'
);


INSERT INTO Albums (title, release_year)
VALUES
(
	'Abbey Road', 1969
),
(
	'Kid A', 2000
),
(
	'To Pimp a Butterfly', 2006
),
(
	'Back to Black', 2006
),
(
	'My Beautiful Dark Twisted Fantasy', 2020
);


INSERT INTO Tracks (title, duration, album_id)
VALUES 
(
	'Come Together', 260, 1
),
(
	'Something', 188, 1
),
(
	'In Limbo', 211, 2
),
(
	'King Kunta', 235, 3
),
(
	'Rehab', 214, 4
),
(
	'Dark Fantasy', 281, 5
),
(
	'My love', 300, 5
);



INSERT INTO Compilations (title,release_year)
VALUES
(
	'20 Greatest Hits', 1982
),
(
	'The Best Of', 2008
),
(
	'Cruel Summer', 2012
),
(
	'The Album Collection', 2018
)

INSERT INTO albums_artists (album_id, artist_id)
VALUES
(
	1, 1
),
(
	2, 2
),
(
	3, 3
),
(
	4, 4
),
(
	5, 5
);

INSERT INTO artists_genres(artist_id,genre_id)
VALUES
(
	1, 1
),
(
	2, 2
),
(
	3, 3
),
(
	4, 1
),
(
	5, 3
);

INSERT INTO compilations_tracks(compilation_id,track_id)
VALUES
(
	1, 1
),
(
	1, 2
),
(
	2, 3
),
(
	3, 4
),
(
	4, 5
)










