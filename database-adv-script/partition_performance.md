# Partitioning Performance Report

## Objective
To implement table partitioning on the Booking table based on the start_date column to optimize query performance.

## Implementation
The Booking table was partitioned by the start_date column, creating separate partitions for each year:

- Booking_2025
- Booking_2026
- Booking_2027

## Performance Testing
### Query Tested
```sql
EXPLAIN ANALYZE 
SELECT * FROM Booking 
WHERE start_date >= '2025-06-01' AND start_date <= '2025-12-31';
