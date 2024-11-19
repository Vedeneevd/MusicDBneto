CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE Artists_Genres (
    artist_id INTEGER REFERENCES Artists(artist_id),
    genre_id INTEGER REFERENCES Genres(genre_id),
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    release_year INTEGER CHECK (release_year >= 1900)
);

CREATE TABLE Albums_Artists (
    album_id INTEGER REFERENCES Albums(album_id),
    artist_id INTEGER REFERENCES Artists(artist_id),
    PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE Tracks (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    duration INTEGER CHECK (duration > 0),
    album_id INTEGER REFERENCES Albums(album_id)
);

CREATE TABLE Compilations (
    compilation_id SERIAL PRIMARY KEY,
    title VARCHAR(60) NOT NULL,
    release_year INTEGER CHECK (release_year >= 1900)
);

CREATE TABLE Compilations_Tracks (
    compilation_id INTEGER REFERENCES Compilations(compilation_id),
    track_id INTEGER REFERENCES Tracks(track_id),
    PRIMARY KEY (compilation_id, track_id)
);