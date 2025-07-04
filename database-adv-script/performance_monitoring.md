# Performance Monitoring Report

## Objective
To continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

## Queries Analyzed
1. **Fetch bookings by user**
   ```sql
   EXPLAIN ANALYZE 
   SELECT * FROM Booking 
   WHERE user_id = 'some_user_id';
