--# after all we only search for the overall review for beer name
CREATE VIEW review_view AS 
SELECT name as beername, reviewOverall as review
FROM Beer, Reviews
WHERE beerId = id;

SELECT * FROM review_view;