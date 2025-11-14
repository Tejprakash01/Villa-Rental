🏡 Villa Rental Website

A simple Villa Rental website built with PHP, MySQL and plain HTML/CSS/JavaScript intended to run on a local XAMPP (or LAMP/WAMP) stack. The repository contains PHP pages for browsing villas, user login/profile, booking functionality and assets (CSS, JS, gallery images) plus an SQL dump to populate the database. 
GitHub

🔎 What’s in this repo (quick glance)

Files and folders present (important ones):

index.php — main landing / listing page. 
GitHub

login.php, logout.php, profile.php, terms.php, privacy.php, gallery.php — site pages. 
GitHub

bookings.php — booking logic / booking page. 
GitHub

connection.php — database connection file (update with your DB credentials). 
GitHub

rental2.sql — MySQL dump to create required tables & seed data. 
GitHub

res.css, script.js — frontend assets. 
GitHub

SMTP.txt — SMTP details / instructions used for mail (configure if emailing is required). 
GitHub

A few gallery images used by the site (gallery-Store3.jpg, etc.). 
GitHub

✅ Prerequisites

PHP (>= 7.4 recommended)

MySQL / MariaDB

XAMPP (recommended for Windows) or LAMP/WAMP/MAMP depending on OS

A browser (Chrome/Firefox/Edge)

🛠️ Installation & Run (step-by-step)

Clone the repo

git clone https://github.com/Tejprakash01/Villa-Rental.git
cd Villa-Rental


Move files into your web root (XAMPP example)
Copy the project folder into your XAMPP htdocs/ directory (for example C:\xampp\htdocs\Villa-Rental) or place files under your Apache document root.

Create the database & import the SQL

Start Apache and MySQL via XAMPP Control Panel.

Open http://localhost/phpmyadmin → Create a new database (e.g. villa_rental).

Import rental2.sql (found in repo) into that database (phpMyAdmin → Import). This will create the tables and seed sample data. 
GitHub

Configure database connection
Edit connection.php and update DB credentials to match your local setup. Example (replace username/password/database):

<?php
$servername = "localhost";
$username = "root";
$password = "";         // default for XAMPP is empty
$dbname = "villa_rental"; // the database you imported

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>


⚠️ If your repository already has a connection.php file, update the values there instead of creating a new file. 
GitHub

(Optional) Configure SMTP for email
If you want booking confirmation emails or password resets, check SMTP.txt for instructions and put correct SMTP credentials in your mail-sending code. (If emailing is not required you can skip this.) 
GitHub

Open the site
Visit http://localhost/Villa-Rental/ (or the directory name you used) in your browser. The index.php is the entry point. 
GitHub

🔐 Accounts & Authentication

The project contains login logic (login.php) and profile pages (profile.php). If sample users are inserted via rental2.sql you can use those credentials — otherwise register via the UI (if a register page exists) or add a user record in the database directly.

🧭 Project Structure (detailed)
Villa-Rental/
├─ index.php
├─ login.php
├─ logout.php
├─ profile.php
├─ bookings.php
├─ gallery.php
├─ navbar.php
├─ footer.php
├─ connection.php        # DB connection — update this
├─ rental2.sql           # DB schema + seed data
├─ SMTP.txt              # SMTP / mail notes
├─ res.css
├─ script.js
├─ gallery-Store3.jpg
└─ README.md


Files exist as listed in the repo. Adjust paths and includes if you move files. 
GitHub

⚙️ Key Implementation Notes & Tips

SQL import issues: If import fails due to charset or engine issues, open the .sql file in a text editor and change charset/engine declarations or create an empty database first and then import.

Permissions: Ensure the PHP process can read image files in the project folder.

Uploads: If the site allows file uploads, confirm an uploads/ or images/ folder exists and is writable by the server (chmod 755/775 as needed). If not present, create it.

Error display: For debugging locally, enable display_errors in php.ini or add ini_set('display_errors', 1); error_reporting(E_ALL); at the top of PHP files (don't enable on production!).

Hard-coded paths: Some includes may assume files are in the same folder (e.g. include 'navbar.php';) — keep the folder structure intact.

🐞 Troubleshooting (common problems)

Blank page / 500 error: Check Apache error logs (xampp/apache/logs/error.log) and enable PHP errors.

Database connection error: Verify connection.php credentials and that MySQL service is running.

Images not showing: Confirm image filenames and that paths in HTML match their location.

Forms not working: Inspect form action attributes in .php files and ensure required fields are present.

🔐 Security & Production Considerations

Never use default DB credentials on a public server.

Sanitize & validate all inputs to prevent SQL injection (use prepared statements instead of raw SQL where possible).

Password storage: use password_hash() / password_verify() (or bcrypt) rather than plain text. If current code uses plain text, migrate to secure hashing.

Remove debugging code and enable proper error handling before deploying.
