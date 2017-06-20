--# Inserts in User
INSERT INTO users VALUES('jeremycardona', 'Puerto Rico', current_timestamp, current_timestamp);

--# Inserts in Beer
--# Notice not inserting id because it's a SERIAL value (autoinc)
INSERT INTO beer(name, style, adv, brewery) VALUES('Sausa Weizen', 'Hefeweizen', 5, 'Vecchio Birraio' );
INSERT INTO beer(name, style, adv, brewery) VALUES('Cauldron DIPA', 'American Double / Imperial IPA', 7.7, 'Caldera Brewing Company');
INSERT INTO beer(name, style, adv, brewery) VALUES('Amstel Light', 'Light Lager', 3.5, 'Amstel Brouwerij B. V.');
INSERT INTO beer(name, style, adv, brewery) VALUES('Nut Brown', 'English Brown Ale', 4.7, 'Broad Ripple Brew Pub');
INSERT INTO beer(name, style, adv, brewery) VALUES('The Captains Porter', 'American Porter', 6, 'Moon River Brewing Company');
INSERT INTO beer(name, style, adv, brewery) VALUES('Hoppin To Heaven IPA', 'American IPA', 6.8, 'Hoppin Frog Brewery');
INSERT INTO beer(name, style, adv, brewery) VALUES('Kirner Pils Premium', 'German Pilsener', 4.8, 'Kirner Bier');
INSERT INTO beer(name, style, adv, brewery) VALUES('Welsh Pride', 'English Bitter', 4, 'Conwy Brewery Ltd');
INSERT INTO beer(name, style, adv, brewery) VALUES('Holiday Imperial', 'American Double / Imperial IPA', 9, 'Pacific Coast Brewing Company');
INSERT INTO beer(name, style, adv, brewery) VALUES('Mt. Takhoma Blonde Ale', 'American Blonde Ale', 3.8, 'Harmon Restaurant & Brewery');


--# Inserts in Brewery
INSERT INTO brewery VALUES ('Vecchio Birraio', 'Italy', 'PD');
INSERT INTO brewery VALUES ('Caldera Brewing Company', 'USA', 'OR');
INSERT INTO brewery VALUES ('Amstel Brouwerij B. V.', 'Netherlands', 'AMS');
INSERT INTO brewery VALUES ('Broad Ripple Brew Pub', 'USA', 'IN');
INSERT INTO brewery VALUES ('Moon River Brewing Company', 'USA', 'GA');
INSERT INTO brewery VALUES ('Hoppin Frog Brewery', 'USA', 'OH');
INSERT INTO brewery VALUES ('Kirner Bier', 'Germany', 'Kirn');
INSERT INTO brewery VALUES ('Conwy Brewery Ltd','UK', 'Llysfaen');
INSERT INTO brewery VALUES ('Pacific Coast Brewing Company', 'USA', 'CA');
INSERT INTO brewery VALUES('Harmon Restaurant & Brewery', 'USA', 'WA');

--# Inserts in Reviews
INSERT INTO reviews(beerId,username,reviewAroma,reviewAppearance,reviewTaste,reviewPalate,reviewOverall) 
VALUES(1,'jeremycardona' , 4.4 , 3.3, 4.3, 2.2, 4.2 );

INSERT INTO reviews VALUES(2,'jeremycardona', 3.4 , 2.3, 1.3, 2.5, 2.2       
);
INSERT INTO reviews VALUES(
    3,'jeremycardona', 4.4 , 3.3, 3, 2, 4       
);
INSERT INTO reviews VALUES(
    4,'jeremycardona',4.4 , 3.0, 4.3, 2.2, 4.1      
);
INSERT INTO reviews VALUES(
    5,'jeremycardona',4.4 , 3.3, 4.3, 2.2, 5       
);
INSERT INTO reviews VALUES(
     6,'jeremycardona', 1.4 , 3.3, 2.3, 2.2, 1       
);
INSERT INTO reviews VALUES(
     7,'jeremycardona',3.4 , 3.3, 3.3, 2.2, 3.2       
);
INSERT INTO reviews VALUES(
     8, 'jeremycardona', 4.4 , 3.3, 4.3, 2.2, 2.2       
);
INSERT INTO reviews VALUES(
     9,'jeremycardona',1.4 , 1.3, 1.3, 2.2, 1.2       
);
INSERT INTO reviews VALUES(
     10,'jeremycardona',3.4 , 3.3, 2.3, 3.2, 3.2       
);
# Inserts in Collections
INSERT INTO collection VALUES('favorites', 'jeremycardona',  
    (SELECT name FROM beer WHERE id=10),
    5
);
INSERT INTO collection VALUES('favorites', 'jeremycardona',  
    (SELECT name FROM beer WHERE id=8),
    5
);
INSERT INTO collection VALUES('recommended','jeremycardona',  
    (SELECT name FROM beer WHERE id=2),
    5
);
INSERT INTO collection VALUES('favorites','jeremycardona', 
    (SELECT name FROM beer WHERE id=5),
    5
);
INSERT INTO collection VALUES('recommended', 'jeremycardona',  
    (SELECT name FROM beer WHERE id=3),
    5
);
INSERT INTO collection VALUES('recommended', 'jeremycardona',  
    (SELECT name FROM beer WHERE id=6),
    5
);