-- Measure query performance before adding indexes

-- Before Adding Indexes: Measure performance for Booking by user_id
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'some_user_id';

-- Before Adding Indexes: Measure performance for Property by location
EXPLAIN ANALYZE SELECT * FROM Property WHERE location = 'some_location';

-- Create indexes for User table
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

-- Create indexes for Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_end_date ON Booking(end_date);

-- Create indexes for Property table
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_name ON Property(name);

-- Measure query performance after adding indexes

-- After Adding Indexes: Measure performance for Booking by user_id
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'some_user_id';

-- After Adding Indexes: Measure performance for Property by location
EXPLAIN ANALYZE SELECT * FROM Property WHERE location = 'some_location';
