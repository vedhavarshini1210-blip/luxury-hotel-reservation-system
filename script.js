// =====================================
// Luxury Hotel Reservation System
// script.js
// =====================================

// Display welcome message
window.onload = function () {
    console.log("Luxury Hotel Reservation System Loaded Successfully");
};

// Smooth scrolling for navigation links
document.querySelectorAll('nav a').forEach(anchor => {

    anchor.addEventListener('click', function (e) {

        e.preventDefault();

        const target = document.querySelector(this.getAttribute('href'));

        if (target) {
            target.scrollIntoView({
                behavior: 'smooth'
            });
        }

    });

});

// Reservation Form Validation

const reservationForm = document.querySelector("form");

if (reservationForm) {

    reservationForm.addEventListener("submit", function (event) {

        const name = document.querySelector('input[name="name"]').value.trim();
        const email = document.querySelector('input[name="email"]').value.trim();
        const phone = document.querySelector('input[name="phone"]').value.trim();
        const room = document.querySelector('select[name="room_type"]').value;
        const checkin = document.querySelector('input[name="checkin"]').value;
        const checkout = document.querySelector('input[name="checkout"]').value;

        if (
            name === "" ||
            email === "" ||
            phone === "" ||
            room === "" ||
            checkin === "" ||
            checkout === ""
        ) {

            alert("Please fill in all required fields.");
            event.preventDefault();
            return;

        }

        // Phone validation
        const phonePattern = /^[0-9]{10}$/;

        if (!phonePattern.test(phone)) {

            alert("Please enter a valid 10-digit phone number.");
            event.preventDefault();
            return;

        }

        // Email validation
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailPattern.test(email)) {

            alert("Please enter a valid email address.");
            event.preventDefault();
            return;

        }

        // Date validation
        const today = new Date().toISOString().split("T")[0];

        if (checkin < today) {

            alert("Check-in date cannot be in the past.");
            event.preventDefault();
            return;

        }

        if (checkout <= checkin) {

            alert("Check-out date must be after check-in date.");
            event.preventDefault();
            return;

        }

        alert("Reservation submitted successfully!");

    });

}

// Back to Top Button

const topButton = document.createElement("button");

topButton.innerHTML = "↑";

topButton.id = "topBtn";

document.body.appendChild(topButton);

topButton.style.position = "fixed";
topButton.style.bottom = "20px";
topButton.style.right = "20px";
topButton.style.padding = "10px 15px";
topButton.style.fontSize = "18px";
topButton.style.display = "none";
topButton.style.cursor = "pointer";
topButton.style.border = "none";
topButton.style.borderRadius = "50%";

window.onscroll = function () {

    if (document.documentElement.scrollTop > 250) {
        topButton.style.display = "block";
    } else {
        topButton.style.display = "none";
    }

};

topButton.onclick = function () {

    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });

};
