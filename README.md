# Famous Persons Database Project (SQL)
A MySQL-based database system exploring Ghana’s entertainment industry connecting famous personalities, movies, songs, TV shows, and awards to uncover trends, contributions, and achievements across multiple media.

## Overview
This project designs and analyzes a relational database titled “Entertainment Hub”, focused on the Ghanaian entertainment landscape. It captures structured data on artists, actors, productions, and awards to demonstrate database design principles and SQL querying techniques.
The database enables insights into:
-	Which personalities are most awarded?
-	How actors and musicians contribute across different media
-	Trends in award categories and popular genres

## Dataset
The database consists of six interrelated tables designed with primary and foreign key constraints to ensure data integrity:
1.	Famous People – Personal details of artists and actors (name, nationality, profession)
2.	Movies – Film data including title, release year, genre, and director
3.	Songs – Track listings with genre, album, and release year
4.	TV Shows – Series titles with genre, release year, and broadcasting network
5.	Awards – Award details linked to personalities and years
6.	Contributions – Relationship table connecting people to their media roles
All data entries are manually curated to reflect realistic Ghanaian entertainment figures and productions.

## Research Questions
-	Which artist or actor has won the most awards?
-	What songs and movies have received the highest recognition?
-	Which personalities have contributed across multiple media types (songs, movies, TV shows)?
-	What are the most popular genres across the entertainment industry?
-	Which movies and TV shows have multiple award wins?

## Methodology
**Database Design**
-	Used MySQL to create normalized tables with clear relationships.
-	Implemented foreign keys to maintain referential integrity.
-	Inserted realistic data to simulate Ghana’s entertainment landscape.

**Query Techniques**
-	JOIN operations to connect related data across tables.
-	Aggregation functions (COUNT, GROUP BY, HAVING) to analyze award patterns.
-	UNION queries to combine datasets from movies, songs, and TV shows.
-	Filtering (WHERE, ORDER BY, LIMIT) to extract targeted insights.

**Sample Queries**
-	Most awarded personality
- All songs or movies that have won awards
-	Contributions of specific individuals across multiple media types
-	Genre popularity analysis
-	Movies directed by specific directors

## Key Findings
**Award Insights**
-	Sarkodie emerges as one of the most awarded artists.
-	Jackie Appiah and Yvonne Nelson are among the most awarded Ghanaian actors.
-	Several productions, including Beasts of No Nation and The Burial of Kojo, appear across multiple award categories.

**Genre Trends**
- Drama dominates film and TV show genres.
-	Afrobeats and Dancehall are the leading music genres among award-winning songs.
**Cross-Media Contributions**
-	Some personalities, such as Efya and Jackie Appiah, appear in both music and film categories, showcasing versatility.

## Technologies Used
-	MySQL / SQL Workbench – Database creation and querying
-	SQL Joins & Aggregations – Relational data analysis
-	Data Modeling – Normalization and schema design
-	ERD Diagramming – Visualizing relationships between tables

## Files in This Repository
-	Famous Persons Project-SQL.sql – Full database creation, data insertion, and queries
-	README.md – This documentation file

## How to Run the Project
1.	Download or clone this repository.
2.	Open the SQL file in MySQL Workbench or any SQL-compatible environment.
3.	Execute the script sequentially to create the database, populate tables, and run queries.
4.	Explore the queries to uncover insights into the entertainment industry.

## Insights and Applications
This project provides a foundational demonstration of SQL database design and analysis, applicable to:
-	Data analytics training – Practicing complex SQL joins and queries
-	Media research – Analyzing entertainment trends and contributions
-	Education – Teaching relational database concepts in a real-world context

## Future Work
Potential extensions include:
-	Incorporating streaming metrics (views, plays) to measure media popularity
-	Adding financial data (movie revenue, music sales) for business analytics
-	Expanding dataset beyond Ghana to include other African entertainment industries
-	Visualizing insights using Power BI or Tableau

