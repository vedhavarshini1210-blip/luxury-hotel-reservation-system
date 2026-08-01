-- Luxury Hotel Reservation System Database
-- Database: luxury_hotel_db

CREATE DATABASE IF NOT EXISTS luxury_hotel_db;

USE luxury_hotel_db;


-- Users Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Rooms Table
CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(20) UNIQUE NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status ENUM('Available','Booked') DEFAULT 'Available',
    description TEXT,
    image VARCHAR(255)
);


-- Bookings Table
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    total_amount DECIMAL(10,2),
    booking_status ENUM('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(user_id)
    ON DELETE CASCADE,

    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
    ON DELETE CASCADE
);


-- Contact Messages Table
CREATE TABLE contact_messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    message TEXT,
    sent_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Insert Sample Users

INSERT INTO users(full_name,email,phone,password)
VALUES
('Admin User','admin@hotel.com','9876543210','admin123'),
('John David','john@gmail.com','9876501234','john123');


-- Insert Sample Rooms

INSERT INTO rooms(room_number,room_type,price,status,description,image)
VALUES

('101','Deluxe Room',3500,'Available',
'Luxury room with AC, WiFi and premium facilities',
'deluxe.jpg'),

('102','Premium Suite',5500,'Available',
'Spacious suite with modern interior and balcony',
'suite.jpg'),

('103','Executive Room',4500,'Booked',
'Comfortable business class room',
'executive.jpg');


-- Insert Sample Booking

INSERT INTO bookings
(user_id,room_id,check_in,check_out,total_amount,booking_status)

VALUES

(1,3,'2026-08-10','2026-08-12',9000,'Confirmed');
