-- SET SQL_MODE = '',
CREATE TABLE Song_Info
(
    Song_Index int,
    Song_Artist VARCHAR(20),
    Song_Genre VARCHAR(20),
    Song_Sub_Genre VARCHAR(20),
    Song_Name VARCHAR(20),
    Song_BPM int,
    PRIMARY KEY (Song_Index)
);
CREATE TABLE Song_Interact
(
    Song_Index int,
    Song_MP3 VARBINARY(3048) DEFAULT '' NOT NULL,
    PRIMARY KEY (Song_MP3) ,
    FOREIGN KEY (Song_Index) REFERENCES Song_Info (Song_Index)
);
-- SET SQL_MODE = ''; 
insert into Song_Info
    (
    Song_Index,Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
    (1, 'Young Thug', 'Rap', 'Hip-Hop', 'Check', 111);
insert into Song_Info
    (
    Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
    (2, 'Alicia Keys', 'R&B', 'Soul', 'New Day', 193);
insert into Song_Info
    (
    Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
    (2, 'Alicia Keys', 'R&B', 'Soul', 'New Day', 193);
insert into Song_Info
    (
    Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
    (3, 'Radiohead', 'Rock', 'Alternative', 'Lotus Flower', 128);
insert into Song_Info
    (
    Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
    (4, 'Mac Miller', 'Rap', 'Hip-Hop', 'Donald Trump', 163);
insert into Song_Info
    (
    Song_Index, Song_Artist, Song_Genre, Song_Sub_Genre, Song_Name, Song_BPM)
values
    (5, 'Ellie Goulding', 'Electronic', 'Pop', 'On My Mind', 154);
insert into Song_Interact
    (
    Song_Index, Song_MP3)
values
    (1, LOAD_FILE('C:\\Users\\pkjes\\Desktop\\CMSI486\\DatabaseProject\\src\\Young-Thug-Check.mp3'));
SHOW VARIABLES LIKE 'secure_file_priv';
SHOW VARIABLES LIKE 'max_allowed_packet';
insert into Song_Interact
    (
    Song_Index, Song_MP3)
values
    (2, LOAD_FILE('C:\Users\pkjes\Desktop\CMSI486\Database Project\src\Alicia-Keys-New-Day.mp3'));
insert into Song_Interact
    (
    Song_Index, Song_MP3)
values
    (3, LOAD_FILE('C:\Users\pkjes\Desktop\CMSI486\Database Project\src\Radiohead-Lotus_Flower.mp3'));
insert into Song_Interact
    (
    Song_Index, Song_MP3)
values
    (4, LOAD_FILE('C:\Users\pkjes\Desktop\CMSI486\Database Project\src\Mac-Miller-Donald-Trump.mp3'));
insert into Song_Interact
    (
    Song_Index, Song_MP3)
values
    (5, LOAD_FILE('C:\Users\pkjes\Desktop\CMSI486\Database Project\src\Ellie-Goulding-On-My-Mind.mp3'));
SELECT *
FROM Song_Info
WHERE Song_Artist = 'Young Thug';
SELECT *
FROM Song_Info
WHERE Song_Name = 'Lotus Flower';
SELECT *
FROM Song_Interact
WHERE Song_Index = 3;
SELECT Song_Artist
FROM Song_Info
WHERE Song_Genre = 'Rap';
