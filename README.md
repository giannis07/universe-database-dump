# 🌌 Celestial Bodies Database

This repository contains my solution for the [Build a Celestial Bodies Database](https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/build-a-celestial-bodies-database) project from freeCodeCamp.

## 📌 Overview

The project involves designing a PostgreSQL database to represent celestial objects such as galaxies, stars, planets, and moons. The database includes proper relational structure, data types, and constraints according to the project's specifications.

## 📁 Files

- `universe.sql`: SQL script containing the schema and initial data for the `universe` database.

## ⚙️ Technologies Used

- PostgreSQL  
- SQL

## 🛠️ How to Run

1. Make sure you have PostgreSQL installed on your system.

2. Run the SQL file to create the database and populate it:

   psql -U <your_postgres_username> -d postgres -f universe.sql

   Replace `<your_postgres_username>` with your actual PostgreSQL username.

3. Access the database:

   psql -U <your_postgres_username> -d universe

4. Explore the schema and data using SQL queries.
