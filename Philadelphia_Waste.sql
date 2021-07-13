CREATE TABLE Coordinates(
	the_geom VARCHAR NOT NULL,
	the_geom_webmercator VARCHAR NOT NULL,
	objectid INT NOT NULL,
	serialnum INT NOT NULL,
	description VARCHAR NOT NULL,
	recycler VARCHAR NOT NULL,
	lat VARCHAR NOT NULL,
	lng VARCHAR NOT NULL,
	PRIMARY KEY(serialnum),
	UNIQUE(objectid)
);

CREATE TABLE Bin_Usage(
	serialnum INT NOT NULL,
	streamtype VARCHAR NOT NULL,
	timestamp_ TIMESTAMP NOT NULL,
	level_ VARCHAR NOT NULL,
	invalid_the_geom VARCHAR NOT NULL
);

SELECT co.objectid,
	co.serialnum,
	co.description,
	co.recycler,
	co.lat,
	co.lng,
	bin.streamtype,
	bin.timestamp_,
	bin.level_
INTO Waste_
FROM Coordinates as co 
INNER JOIN Bin_Usage as bin
ON co.serialnum = bin.serialnum;


SELECT * FROM Waste_;
SELECT * FROM Bin_Usage;
SELECT * FROM Coordinates;
DROP TABLE Waste_ CASCADE;
DROP TABLE Bin_Usage CASCADE;