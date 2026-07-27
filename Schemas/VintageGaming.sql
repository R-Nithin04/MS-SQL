CREATE TABLE VintageGaming
(
    GameID INT PRIMARY KEY,
    GameName VARCHAR(50),
    Console VARCHAR(30),
    Genre VARCHAR(20),
    ReleaseYear INT,
    Company VARCHAR(30),
    CopiesSold DECIMAL(6,2),      -- in millions
    Rating DECIMAL(3,1),
    Price INT
);

INSERT INTO VintageGaming VALUES
(1,'Metal Slug','Neo Geo','Run and Gun',1996,'SNK',1.2,9.5,40);

INSERT INTO VintageGaming VALUES
(2,'Metal Slug X','Neo Geo','Run and Gun',1999,'SNK',0.9,9.7,45);

INSERT INTO VintageGaming VALUES
(3,'Street Fighter II','Arcade','Fighting',1991,'Capcom',15.5,9.8,60);

INSERT INTO VintageGaming VALUES
(4,'King of Fighters 98','Neo Geo','Fighting',1998,'SNK',2.1,9.6,50);

INSERT INTO VintageGaming VALUES
(5,'Pac-Man','Arcade','Maze',1980,'Namco',42.0,9.4,35);

INSERT INTO VintageGaming VALUES
(6,'Contra','NES','Run and Gun',1987,'Konami',4.3,9.3,30);

INSERT INTO VintageGaming VALUES
(7,'Super Mario Bros','NES','Platform',1985,'Nintendo',58.0,9.9,55);

INSERT INTO VintageGaming VALUES
(8,'Sonic the Hedgehog','Genesis','Platform',1991,'Sega',24.0,9.2,45);

INSERT INTO VintageGaming VALUES
(9,'Mortal Kombat','Arcade','Fighting',1992,'Midway',12.0,9.1,55);

INSERT INTO VintageGaming VALUES
(10,'Donkey Kong','Arcade','Platform',1981,'Nintendo',8.5,8.9,30);

INSERT INTO VintageGaming VALUES
(11,'Galaga','Arcade','Shooter',1981,'Namco',5.4,9.0,25);

INSERT INTO VintageGaming VALUES
(12,'Metal Slug 3','Neo Geo','Run and Gun',2000,'SNK',1.8,9.8,50);