--# making index for reviews and collections
CREATE INDEX collection_index ON Collection(username, collectionName);
CREATE INDEX reviews_index ON Reviews(beerId, username);
