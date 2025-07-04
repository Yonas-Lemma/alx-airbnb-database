# Index Performance Measurement

## Objective
To measure the performance impact of adding indexes to the User, Booking, and Property tables.

## Indexes Created
- User Table:
  - Index on `email`
  - Index on `role`
  
- Booking Table:
  - Index on `user_id`
  - Index on `property_id`
  - Index on `start_date`
  - Index on `end_date`
  
- Property Table:
  - Index on `host_id`
  - Index on `location`
  - Index on `name`

## Performance Measurement

### Before Adding Indexes
- Query: `SELECT * FROM Booking WHERE user_id = 'some_user_id';`
- Execution Plan: 
  - (Insert EXPLAIN output here)

### After Adding Indexes
- Query: `SELECT * FROM Booking WHERE user_id = 'some_user_id';`
- Execution Plan: 
  - (Insert EXPLAIN output here)

## Conclusion
- (Summarize the performance improvements observed after adding indexes.)
