# Normalization Steps for Airbnb Database

## Objective
To apply normalization principles and ensure the database is in the Third Normal Form (3NF).

## Current Schema Overview
The current schema includes the following entities:
- User
- Property
- Booking
- Payment
- Review
- Message

## Normalization Process

### Step 1: Review Current Schema
- The schema was reviewed for compliance with 1NF, 2NF, and 3NF.

### Step 2: Identify Redundancies and Violations
- **1NF**: All attributes are atomic, and primary keys are defined.
- **2NF**: All non-key attributes are fully functionally dependent on their primary keys.
- **3NF**: No transitive dependencies were found. All attributes are directly related to their respective primary keys.

### Step 3: Adjust Database Design
- The current schema is in 3NF. However, we considered the following optional adjustment:
  - Creating a separate **Role** table to manage user roles more effectively.
  
  **Role Table Structure:**
  - role_id (PK, UUID)
  - role_name (VARCHAR, UNIQUE, NOT NULL)

### Conclusion
The database design is currently in Third Normal Form (3NF), ensuring minimal redundancy and maintaining data integrity. Optional adjustments were considered to enhance flexibility in managing user roles.
