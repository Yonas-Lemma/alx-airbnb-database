# SQL Joins Queries

This repository contains SQL scripts demonstrating various types of joins in SQL.

## Queries

1. **INNER JOIN**: Retrieves all bookings and the respective users who made those bookings.
2. **LEFT JOIN**: Retrieves all properties and their reviews, including properties that have no reviews.
3. **FULL OUTER JOIN**: Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.

## Usage

To execute the queries, run the `joins_queries.sql` file in your SQL database management system (e.g., PostgreSQL, MySQL).

```sql
-- Example command to run the joins script
\i path/to/joins_queries.sql

# SQL Subqueries

This repository contains SQL scripts demonstrating the use of both correlated and non-correlated subqueries.

## Queries

1. **Non-Correlated Subquery**: Finds all properties where the average rating is greater than 4.0.
2. **Correlated Subquery**: Finds users who have made more than 3 bookings.

## Usage

To execute the queries, run the `subqueries.sql` file in your SQL database management system (e.g., PostgreSQL, MySQL).

```sql
-- Example command to run the subqueries script
\i path/to/subqueries.sql
