CREATE TABLE users(
    username CHAR[50] NOT NULL,
    password CHAR[50] NOT NULL,
    sign CHAR[50],
    tags CHAR[50] NOT NULL,
    PRIMARY KEY(username)
);

CREATE TABLE corals(
    master CHAR[50],
    coralID INT NOT NULL,
    coralname CHAR[50],
    species CHAR[20] NOT NULL,
    position CHAR[50],
    updatetime CHAR[10] NOT NULL,
    light CHAR[10] NOT NULL,
    temp CHAR[10] NOT NULL,
    microelement CHAR[10] NOT NULL,
    size INT NOT NULL,
    lastmeasure FLOAT NOT NULL,
    growth FLOAT NOT NULL,
    score INT NOT NULL,
    birthtime CHAR[10] NOT NULL,
    adopttime CHAR[10],
    PRIMARY KEY(coralID)
);

CREATE TABLE coralspecies(
    species CHAR[50] NOT NULL,
    speciesen CHAR[50] NOT NULL,
    tags CHAR[50] NOT NULL,
    classification CHAR[50] NOT NULL,
    classificationen CHAR[50] NOT NULL,
    difficulty INT NOT NULL,
    growspeed CHAR[5] NOT NULL,
    current CHAR[5] NOT NULL,
    light CHAR[5] NOT NULL,
    feed CHAR[5] NOT NULL,
    color CHAR[15] NOT NULL,
    attention CHAR[50] NOT NULL,
    PRIMARY KEY(species)
);