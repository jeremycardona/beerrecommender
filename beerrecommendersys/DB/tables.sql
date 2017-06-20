CREATE TABLE users(
    username            VARCHAR(20) PRIMARY KEY NOT NULL,
    country             VARCHAR(25), 
    registeredOn        DATE,
    modifiedOn          DATE
);


CREATE TABLE brewery(
    name                VARCHAR(60) PRIMARY KEY NOT NULL,
    country             VARCHAR(25),
    city                VARCHAR(15)
);
CREATE TABLE beer(
    id                  SERIAL PRIMARY KEY NOT NULL,
    name                VARCHAR(60),
    style               VARCHAR(30),
    adv                 NUMERIC(2),
    brewery             VARCHAR(60)
);

CREATE TABLE reviews(
    beerId              INT REFERENCES beer(id),
    username            VARCHAR(20) REFERENCES users(username),
    reviewAroma         NUMERIC(2) CHECK(reviewAroma <= 5.0 AND reviewAroma >= 0.0),
    reviewAppearance    NUMERIC(2) CHECK(reviewAppearance <= 5.0 AND reviewAppearance >= 0.0),
    reviewTaste         NUMERIC(2) CHECK(reviewTaste <= 5.0 AND reviewTaste >= 0.0),
    reviewPalate        NUMERIC(2) CHECK(reviewPalate <= 5.0 AND reviewPalate >= 0.0),
    reviewOverall       NUMERIC(2) CHECK(reviewOverall <= 5.0 AND reviewOverall >= 0.0)
    
);

CREATE TABLE collection(
    collectionName      VARCHAR(25) NOT NULL,
    username            VARCHAR(20) REFERENCES users(username) NOT NULL,
    beername            VARCHAR(60) ,
    rating              NUMERIC(2) CHECK(rating <= 5.0 AND rating >= 0.0)
);
