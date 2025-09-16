# Beer Recommender DB

Beer Recommender is a system designed to help users discover and get personalized recommendations for beers based on user reviews and ratings. Users can explore new beers, review them, and manage personal collections of their favorites. The project provides a structured database schema tailored for the beer reviewing and recommendation domain.

## Features

- **Personalized Beer Recommendations:** Get beer suggestions based on your reviews.
- **Explore and Review Beers:** Discover new beers, write reviews, and rate different attributes.
- **Manage Collections:** Save and organize beers into personal collections.
- **Comprehensive Database Schema:** Supports users, beers, breweries, reviews, and collections.

## Project Structure

- **beerrecommendersys/**  
  Contains the main code and database setup for the beer recommender system.  
  - `README.md`: Details about the database schema and setup instructions.
- **index.md**  
  Project index or landing page.
- **_config.yml**  
  Configuration file for project or documentation settings.

## Data Model

### Entities and Relationships

- **User:**  
  - Unique username, country, registration and modification dates.
- **Beer:**  
  - Unique ID, name, style, alcohol percentage, and brewery reference.
- **Brewery:**  
  - Unique ID, name, country, and city.
- **Review:**  
  - Links user to beer with detailed scoring (aroma, appearance, taste, palate, overall).
- **Collection:**  
  - Allows users to save beers in named groups with a personal rating.

See [`beerrecommendersys/README.md`](beerrecommendersys/README.md) for the full schema details.

## Installation & Setup

1. **Install PostgreSQL (version 9.6.1 recommended).**
2. **Database Setup:**
   ```bash
   psql
   createdb beersdb
   \q
   cd beerrecommendersys/DB
   psql -d beersdb -a -f setup.sql
   ```
   Alternatively, run individual `.sql` files as needed.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.

---
Explore, review, and get the best beer recommendations!
