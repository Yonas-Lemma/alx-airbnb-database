-- Drop the existing Booking table if it exists
DROP TABLE IF EXISTS Booking;

-- Create the partitioned Booking table
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID,
    user_id UUID,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Create partitions for the Booking table
CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE Booking_2026 PARTITION OF Booking
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

CREATE TABLE Booking_2027 PARTITION OF Booking
    FOR VALUES FROM ('2027-01-01') TO ('2028-01-01');

-- Add more partitions as needed for future years
