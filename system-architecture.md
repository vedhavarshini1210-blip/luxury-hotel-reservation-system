# System Architecture

## Luxury Hotel Reservation System Architecture

The Luxury Hotel Reservation System is a web-based application developed using PHP, MySQL, HTML, CSS, and JavaScript. The system follows a three-layer architecture where the user interface communicates with the backend logic and database.

---

## Architecture Overview
          User
            |
            |
    Web Browser Interface
    (HTML, CSS, JavaScript)
            |
            |
      PHP Application Layer
    (Business Logic & Processing)
            |
            |
      MySQL Database Layer
  (Users, Rooms, Bookings Data)
  
---

# System Components

## 1. Presentation Layer

### Technologies:
- HTML
- CSS
- JavaScript

### Responsibilities:
- Provides user-friendly interface
- Displays hotel rooms and details
- Collects booking information
- Handles client-side validation


---

## 2. Application Layer

### Technology:
- PHP

### Responsibilities:
- Processes user requests
- Handles authentication
- Manages room booking operations
- Communicates with database
- Updates reservation status


---

## 3. Database Layer

### Technology:
- MySQL

### Tables:

### Users Table
Stores customer information.

Attributes:
- User ID
- Name
- Email
- Phone
- Password


### Rooms Table
Stores hotel room details.

Attributes:
- Room ID
- Room Number
- Room Type
- Price
- Availability Status


### Bookings Table
Stores reservation information.

Attributes:
- Booking ID
- User ID
- Room ID
- Check-in Date
- Check-out Date
- Booking Status


### Contact Messages Table
Stores customer queries and feedback.


---

# Data Flow

## User Registration

---

## Room Booking Process

User Selects Room
|
|
Enter Booking Details
|
|
PHP Processes Request
|
|
Check Room Availability
|
|
Store Booking Details
|
|
Update Room Status


---

# Database Relationship

Users
|
| 1 : Many
|
Bookings
|
| Many : 1
|
Rooms

A single user can make multiple bookings, while each booking belongs to one room.

---

# Security Features

- Input validation
- Database constraints
- Unique email verification
- Password encryption support
- Prevention of invalid booking entries


---

# Future Enhancements

- Online payment gateway
- Admin dashboard
- Email booking confirmation
- Customer review system
- Cloud database integration
