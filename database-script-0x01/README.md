# Airbnb Database Schema

This repository contains the SQL schema for the Airbnb-like application database. The schema is designed to manage users, properties, bookings, payments, reviews, and messages.

## Tables

1. **User**: Stores user information including roles (guest, host, admin).
2. **Property**: Contains details about properties listed by users.
3. **Booking**: Manages bookings made by users for properties.
4. **Payment**: Records payment details for bookings.
5. **Review**: Allows users to leave reviews for properties.
6. **Message**: Facilitates messaging between users.

## Usage

To set up the database, execute the `schema.sql` file in your SQL database management system (e.g., PostgreSQL, MySQL).

```sql
-- Example command to run the schema
\i path/to/schema.sql
