-- Insert Sample Data into User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
    (uuid_generate_v4(), 'Alice', 'Smith', 'alice@example.com', 'hashed_password_1', '123-456-7890', 'host', DEFAULT),
    (uuid_generate_v4(), 'Bob', 'Johnson', 'bob@example.com', 'hashed_password_2', '234-567-8901', 'guest', DEFAULT),
    (uuid_generate_v4(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password_3', '345-678-9012', 'guest', DEFAULT),
    (uuid_generate_v4(), 'Diana', 'Prince', 'diana@example.com', 'hashed_password_4', '456-789-0123', 'admin', DEFAULT);

-- Insert Sample Data into Property Table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
    (uuid_generate_v4(), (SELECT user_id FROM User WHERE email = 'alice@example.com'), 'Cozy Cottage', 'A cozy cottage in the countryside.', 'Countryside', 100.00, DEFAULT, DEFAULT),
    (uuid_generate_v4(), (SELECT user_id FROM User WHERE email = 'alice@example.com'), 'Beachfront Villa', 'A beautiful villa with ocean views.', 'Beach City', 250.00, DEFAULT, DEFAULT),
    (uuid_generate_v4(), (SELECT user_id FROM User WHERE email = 'bob@example.com'), 'Downtown Apartment', 'A modern apartment in the city center.', 'City Center', 150.00, DEFAULT, DEFAULT);

-- Insert Sample Data into Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
    (uuid_generate_v4(), (SELECT property_id FROM Property WHERE name = 'Cozy Cottage'), (SELECT user_id FROM User WHERE email = 'bob@example.com'), '2025-07-01', '2025-07-05', 400.00, 'confirmed', DEFAULT),
    (uuid_generate_v4(), (SELECT property_id FROM Property WHERE name = 'Beachfront Villa'), (SELECT user_id FROM User WHERE email = 'charlie@example.com'), '2025-08-10', '2025-08-15', 1250.00, 'pending', DEFAULT),
    (uuid_generate_v4(), (SELECT property_id FROM Property WHERE name = 'Downtown Apartment'), (SELECT user_id FROM User WHERE email = 'diana@example.com'), '2025-06-28', '2025-06-30', 300.00, 'confirmed', DEFAULT);

-- Insert Sample Data into Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
    (uuid_generate_v4(), (SELECT booking_id FROM Booking WHERE status = 'confirmed' AND user_id = (SELECT user_id FROM User WHERE email = 'bob@example.com')), 400.00, DEFAULT, 'credit_card'),
    (uuid_generate_v4(), (SELECT booking_id FROM Booking WHERE status = 'pending' AND user_id = (SELECT user_id FROM User WHERE email = 'charlie@example.com')), 1250.00, DEFAULT, 'paypal'),
    (uuid_generate_v4(), (SELECT booking_id FROM Booking WHERE status = 'confirmed' AND user_id = (SELECT user_id FROM User WHERE email = 'diana@example.com')), 300.00, DEFAULT, 'stripe');

-- Insert Sample Data into Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
    (uuid_generate_v4(), (SELECT property_id FROM Property WHERE name = 'Cozy Cottage'), (SELECT user_id FROM User WHERE email = 'bob@example.com'), 5, 'Had a wonderful stay!', DEFAULT),
    (uuid_generate_v4(), (SELECT property_id FROM Property WHERE name = 'Beachfront Villa'), (SELECT user_id FROM User WHERE email = 'charlie@example.com'), 4, 'Great views but a bit noisy.', DEFAULT),
    (uuid_generate_v4(), (SELECT property_id FROM Property WHERE name = 'Downtown Apartment'), (SELECT user_id FROM User WHERE email = 'diana@example.com'), 5, 'Perfect location!', DEFAULT);

-- Insert Sample Data into Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
    (uuid_generate_v4(), (SELECT user_id FROM User WHERE email = 'alice@example.com'), (SELECT user_id FROM User WHERE email = 'bob@example.com'), 'Welcome to my property!', DEFAULT),
    (uuid_generate_v4(), (SELECT user_id FROM User WHERE email = 'bob@example.com'), (SELECT user_id FROM User WHERE email = 'alice@example.com'), 'Thank you for hosting me!', DEFAULT),
    (uuid_generate_v4(), (SELECT user_id FROM User WHERE email = 'charlie@example.com'), (SELECT user_id FROM User WHERE email = 'diana@example.com'), 'Can I ask about the property?', DEFAULT);
