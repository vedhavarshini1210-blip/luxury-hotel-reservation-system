<?php
// index.php
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Hotel Reservation System</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

<header>
    <div class="container">
        <h1>Luxury Hotel Reservation System</h1>

        <nav>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#rooms">Rooms</a></li>
                <li><a href="#reservation">Reservation</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>

<section id="home" class="hero">

    <h2>Welcome to Luxury Hotel</h2>

    <p>
        Experience premium hospitality with comfortable rooms,
        modern facilities, and secure online reservation.
    </p>

    <a href="#reservation" class="btn">
        Book Now
    </a>

</section>

<section id="rooms">

    <h2>Available Room Types</h2>

    <div class="room-container">

        <div class="room-card">
            <h3>Standard Room</h3>
            <p>Comfortable room for budget travelers.</p>
            <p><strong>₹2,000 / Night</strong></p>
        </div>

        <div class="room-card">
            <h3>Deluxe Room</h3>
            <p>Spacious room with premium facilities.</p>
            <p><strong>₹4,000 / Night</strong></p>
        </div>

        <div class="room-card">
            <h3>Suite Room</h3>
            <p>Luxury suite with world-class amenities.</p>
            <p><strong>₹7,000 / Night</strong></p>
        </div>

    </div>

</section>

<section id="reservation">

<h2>Room Reservation</h2>

<form action="book_room.php" method="POST">

<label>Full Name</label>
<input
type="text"
name="name"
required>

<label>Email</label>
<input
type="email"
name="email"
required>

<label>Phone Number</label>
<input
type="tel"
name="phone"
required>

<label>Room Type</label>

<select name="room_type" required>

<option value="">Select Room</option>

<option value="Standard">
Standard Room
</option>

<option value="Deluxe">
Deluxe Room
</option>

<option value="Suite">
Suite Room
</option>

</select>

<label>Check-In Date</label>

<input
type="date"
name="checkin"
required>

<label>Check-Out Date</label>

<input
type="date"
name="checkout"
required>

<button type="submit">
Reserve Room
</button>

</form>

</section>

<section id="contact">

<h2>Contact</h2>

<p>Email : info@luxuryhotel.com</p>

<p>Phone : +91 9876543210</p>

<p>Address : Chennai, Tamil Nadu, India</p>

</section>

<footer>

<p>
© 2026 Luxury Hotel Reservation System.
All Rights Reserved.
</p>

</footer>

<script src="script.js"></script>

</body>
</html>
