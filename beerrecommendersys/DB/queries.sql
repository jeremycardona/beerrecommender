--# These are some of the possible queries users would make

--# I wanna get drunk, give me beers with more than 8 adv
SELECT name
FROM beer
WHERE adv > 8;


--# Lets see if there is some brewery in mayaguez
SELECT name
FROM Brewery
WHERE country='Puerto Rico' AND city='Mayaguez';

--# What beers have more than 4 overall ratings?
SELECT name FROM Beer
    WHERE id IN(SELECT beerId FROM reviews WHERE reviewOverall > 4);

--# Which breweries make IPA beers???
SELECT name FROM Brewery 
    WHERE name IN(SELECT name FROM beer WHERE style LIKE '%IPA%');

--# Which brewery in puerto rico has stouts with an overall rating of 4 or greater

SELECT name 
FROM brewery, (SELECT reviewOverall as review 
                FROM reviews
                WHERE reviewOverall >= 4
) as rating, (SELECT name, brewery 
                FROM beer
                WHERE style LIKE '%stout%'
) as stoutbeers
WHERE country = 'Puerto Rico' AND stoutbeers.brewery = brewery.name;
    