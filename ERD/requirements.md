# Entity-Relationship Diagram for Airbnb Database

## Entities and Attributes

1. **User**
   - user_id (PK, UUID)
   - first_name (VARCHAR, NOT NULL)
   - last_name (VARCHAR, NOT NULL)
   - email (VARCHAR, UNIQUE, NOT NULL)
   - password_hash (VARCHAR, NOT NULL)
   - phone_number (VARCHAR, NULL)
   - role (ENUM: guest, host, admin, NOT NULL)
   - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

2. **Property**
   - property_id (PK, UUID)
   - host_id (FK, references User(user_id))
   - name (VARCHAR, NOT NULL)
   - description (TEXT, NOT NULL)
   - location (VARCHAR, NOT NULL)
   - pricepernight (DECIMAL, NOT NULL)
   - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
   - updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)

3. **Booking**
   - booking_id (PK, UUID)
   - property_id (FK, references Property(property_id))
   - user_id (FK, references User(user_id))
   - start_date (DATE, NOT NULL)
   - end_date (DATE, NOT NULL)
   - total_price (DECIMAL, NOT NULL)
   - status (ENUM: pending, confirmed, canceled, NOT NULL)
   - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

4. **Payment**
   - payment_id (PK, UUID)
   - booking_id (FK, references Booking(booking_id))
   - amount (DECIMAL, NOT NULL)
   - payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
   - payment_method (ENUM: credit_card, paypal, stripe, NOT NULL)

5. **Review**
   - review_id (PK, UUID)
   - property_id (FK, references Property(property_id))
   - user_id (FK, references User(user_id))
   - rating (INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL)
   - comment (TEXT, NOT NULL)
   - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

6. **Message**
   - message_id (PK, UUID)
   - sender_id (FK, references User(user_id))
   - recipient_id (FK, references User(user_id))
   - message_body (TEXT, NOT NULL)
   - sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

## Relationships

- User to Property: One-to-Many
- User to Booking: One-to-Many
- Property to Booking: One-to-Many
- Booking to Payment: One-to-One
- User to Review: One-to-Many
- Property to Review: One-to-Many
- User to Message: One-to-Many
