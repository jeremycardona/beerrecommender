****************
BEER RECOMMENDER
****************
is a system where users can get recommendations for beers based on users beer reviews,
users can discover new beers to try and give ratings where they are going to be used
to keep recommending new beers.

*********************************
ABOUT THIS PROJECT
*********************************
Assumptions:
An user has an unique username, may review many beers, and have many collections
A beer has an unique id, where an unique beer may have many reviews and be in many collections
A brewery has an unique id, and a brewery may be a brewery of many beers
A collection may have many beers in it, 

Relations:
User(
    username : unique identifier for each person
    country  : country where they live 
    registeredOn : date registered
    modifiedOn : date that any changes were made by the user
)
Beer(
    id : unique identifier for each beer
    name : beer name
    style : beer style 
    adv : alcohol percent
    brewery : brewery name that was made in
)
Brewery(
    id : unique identifier for each brewery
    name : brewery name
    country : country where the brewery is established
    city : city where the brewery is established
)

Reviews(
    beerId : beer id to be reviewed 
    username : username that reviewed
    reviewAroma : score review of the aroma
    reviewAppearance: review of the beer color
    reviewTaste : score review of the beer taste
    reviewPalate : score review of the palate 
    reviewOverall : overall score of the beer
)
Colletion(
    collectionName : an user may save a collection of his favorite beers 
    username : username that owns the collection
    beername : beername in the collection
    rating : rating of the beer or how likely its recommended
)




This folder contains the code for beer recommender database using postgresql(9.6.1).

To get started with the installation and setup:
in your command line write 'psql', after that write 'createdb beersdb', then write '\q'

then inside the 'DB' folder write
'psql -d beersdb -a -f setup.sql' will run all the sql files.
insead of running all files at once, 'psql -d beersdb -a -f filename.sql'
