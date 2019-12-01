CREATE DATABASE yung_gan;

CREATE TABLE Song_Info (
Song_Index int,
Song_Artist VARCHAR(20),
Song_Genre VARCHAR(20),
Song_Sub_Genre VARCHAR(20),
Song_Name VARCHAR(20),
Song_BPM int,
PRIMARY KEY (Song_Info_Key)
);

CREATE TABLE Song_Interact (
Song_Index int,
Song_MP3 VARBINARY(MAX),
PRIMARY KEY (Song_Index),
FOREIGN KEY (Song_Info_Key) REFERENCES Song_Info (Song_Info_Key) 
);


--Info

insert into Song_Info (
Song_Index,Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
(1,'Young Thug', 'Rap', 'Hip-Hop', 'Check', 111);

insert into Song_Info (
Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
(2,'Alicia Keys', 'R&B', 'Soul', 'New Day', 193);

insert into Song_Info (
Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
(3,'Radiohead', 'Rock', 'Alternative', 'Lotus Flower', 128);

insert into Song_Info (
Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
(4,'Mac Miller', 'Rap', 'Hip-Hop', 'Donald Trump', 163);

insert into Song_Info (
Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
(5,'Ellie Goulding', 'Electronic', 'Pop', 'On My Mind', 154);

--Add more


--Interact 

insert into Song_Interact (
Song_Index, Song_MP3)
values
(1, LOAD_FILE('Young-Thug-Check.mp3'));

insert into Song_Interact (
Song_Index, Song_MP3)
values
(2, LOAD_FILE('Alicia-Keys-New-Day.mp3'));

insert into Song_Interact (
Song_Index, Song_MP3)
values
(3, LOAD_FILE('Radiohead-Lotus_Flower.mp3'));

insert into Song_Interact (
Song_Index, Song_MP3)
values
(4, LOAD_FILE('Mac-Miller-Donald-Trump.mp3'));

insert into Song_Interact (
Song_Index, Song_MP3)
values
(5, LOAD_FILE('Ellie-Goulding-On-My-Mind.mp3'));

--Add more

-- Queries:

SELECT * FROM Song_Info WHERE Song_Artist = 'Young Thug';

SELECT * FROM Song_Info WHERE Song_Name = 'Lotus Flower';

SELECT * FROM Song_Interact WHERE Song_Index = 3;

SELECT * FROM Song_Interact WHERE Song_MP3 = LOAD_FILE('Ellie-Goulding-On-My-Mind.mp3');

SELECT Song_Artist FROM Song_Info WHERE Song_Genre = 'Rap';

SELECT Song_Index FROM Song_Interact WHERE Song_MP3 = LOAD_FILE('Young-Thug-Check.mp3');