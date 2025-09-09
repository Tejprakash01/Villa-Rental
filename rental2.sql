-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 02:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_panel`
--

CREATE TABLE `admin_panel` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_panel`
--

INSERT INTO `admin_panel` (`admin_id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `book_villa` int(11) NOT NULL,
  `book_vname` varchar(25) NOT NULL,
  `book_in` date NOT NULL,
  `book_out` date NOT NULL,
  `book_guests` int(11) NOT NULL,
  `book_name` varchar(35) NOT NULL,
  `book_phone` varchar(20) NOT NULL,
  `book_email` varchar(50) NOT NULL,
  `book_loginemail` varchar(50) NOT NULL,
  `book_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `book_villa`, `book_vname`, `book_in`, `book_out`, `book_guests`, `book_name`, `book_phone`, `book_email`, `book_loginemail`, `book_amt`) VALUES
(1, 1, 'Glambirds Stay', '2025-05-23', '2025-05-26', 3, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 12300),
(2, 2, 'Valley Views', '2025-05-23', '2025-05-26', 3, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 27300),
(3, 3, 'IGloo Homes', '2025-05-23', '2025-05-26', 3, 'Mayank Jhamtani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 29700),
(4, 1, 'Glambirds Stay', '2025-06-05', '2025-06-06', 1, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 4100),
(5, 1, 'Glambirds Stay', '2025-07-08', '2025-07-10', 3, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 8200),
(6, 2, 'Valley Views', '2025-06-01', '2025-06-02', 3, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'mayank@gmail.com', 27300),
(7, 1, 'Glambirds Stay', '2025-06-02', '2025-06-04', 3, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 29700),
(8, 3, 'IGloo Homes', '2025-06-06', '2025-06-07', 3, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'gangwanikeshav2004@gmail.com', 27300);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cp_id` int(11) NOT NULL,
  `cp_phone` varchar(20) NOT NULL,
  `cp_mobile` varchar(20) NOT NULL,
  `cp_email` varchar(50) NOT NULL,
  `cp_website` varchar(50) NOT NULL,
  `cp_address` text NOT NULL,
  `cp_map` text NOT NULL,
  `cp_face` varchar(30) NOT NULL,
  `cp_insta` varchar(30) NOT NULL,
  `cp_link` varchar(30) NOT NULL,
  `cp_twit` varchar(30) NOT NULL,
  `cp_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cp_id`, `cp_phone`, `cp_mobile`, `cp_email`, `cp_website`, `cp_address`, `cp_map`, `cp_face`, `cp_insta`, `cp_link`, `cp_twit`, `cp_status`) VALUES
(1, '0291-2468585', '+91-9269655447', 'theescapebay.travel@gmail.com', 'www.escapeBaytravel.com', 'Ground Floor, Laxmi Tower, Bhaskar Circle, Ratanada, Jodhpur (Raj.)', 'demo', 'escapebay_fb', 'escapesbay_travel', 'escapebay_ld', 'escapebay_tw', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(30) NOT NULL,
  `e_phone` varchar(15) NOT NULL,
  `e_email` varchar(50) NOT NULL,
  `e_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`e_id`, `e_name`, `e_phone`, `e_email`, `e_message`) VALUES
(1, 'Keshav Gangwani', '9462730048', 'gangwanikeshav2005@gmail.com', 'this is an demo enquiry !!!!!!\r\n'),
(2, 'Keshav Gangwani', '9462730048', 'gangwanikeshav2005@gmail.com', 'this is my 2nd enquiry'),
(3, 'Keshav Gangwani', '9462730048', 'gangwanikeshav2005@gmail.com', 'this is my 3rd enquiry'),
(4, 'Keshav Gangwani', '9462730048', 'gangwanikeshav2005@gmail.com', 'i want to enquire for the whole property of the escape bay'),
(5, 'Mayank Jhamtani', '89474887584', 'gangwanikeshav2004@gmail.com', 'this is the demo enquiry\r\n'),
(6, 'Mayank Jhamtani', '9462730048', 'harshajhamtani100@gmail.com', 'sajgsdhvsajvsjkbaskdjafsbafjhsbfhjsfc'),
(7, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'this is an enquiry mail\r\n'),
(8, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2004@gmail.com', 'hey\r\n'),
(9, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'sabjhvfsajdbfsajkdf\r\n'),
(10, 'Keshav Gangwani', '09462730048', 'gangwanikeshav2005@gmail.com', 'fgdfgdgdgdfg');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_question` text NOT NULL,
  `faq_answer` text NOT NULL,
  `faq_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_question`, `faq_answer`, `faq_status`) VALUES
(1, 'What amenities are included in the villa?', 'Our villas include a private pool, high-speed Wi-Fi, daily housekeeping, premium toiletries, and fully equipped kitchens.', 1),
(2, 'Is there an option for early check-in?', 'Yes, early check-in is available based on availability. Please contact us 24 hours prior to your arrival to request it.', 1),
(3, 'Are pets allowed in the property?', 'Select villas are pet friendly. Let us know in advance if you are traveling with a pet so we can find a suitable property for you.', 1),
(5, 'How do I modify or cancel my booking?', 'You can manage your booking through your account or contact our support team. Free cancellation is available up to 7 days before check-in.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_title` varchar(15) NOT NULL,
  `gallery_image` text NOT NULL,
  `gallery_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_title`, `gallery_image`, `gallery_status`) VALUES
(1, 'image 1', '7jpg.jpg', 1),
(2, 'image 2', '9.jpg', 1),
(3, 'image 3', 'bedroom2.jpg', 1),
(4, 'image 4', '2jpg.jpg', 1),
(5, 'image 5', '1.jpg', 1),
(6, 'image 6', '11.jpg', 1),
(7, 'image 7', 'bedroom4.jpg', 1),
(8, 'image 8', 'gym.jpg', 1),
(9, 'image 9', 'lobby2.jpg', 1),
(10, 'image 10', 'bathroom.jpg', 1),
(11, '', 'washroom2.jpg', 1),
(12, '', 'washroom.jpg', 1),
(13, '', 'umaidbhawanpalace.jpg', 1),
(14, '', 'poolside3.jpg', 1),
(15, '', 'palaceaboutpage.jpg', 1),
(16, '', 'lobby.jpg', 1),
(17, '', 'lobby2.jpg', 1),
(18, '', '8.jpg', 1),
(19, '', '', 1),
(20, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `reg _id` int(11) NOT NULL,
  `reg_user` varchar(50) NOT NULL,
  `reg_pass` varchar(50) NOT NULL,
  `reg_fname` varchar(15) NOT NULL,
  `reg_lname` varchar(10) NOT NULL,
  `reg_address` text NOT NULL,
  `reg_birth` date NOT NULL,
  `reg_gender` varchar(10) NOT NULL,
  `reg_mstatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`reg _id`, `reg_user`, `reg_pass`, `reg_fname`, `reg_lname`, `reg_address`, `reg_birth`, `reg_gender`, `reg_mstatus`) VALUES
(1, 'demo@gmail.com', 'demo123', 'fdemo', 'ldemo', 'jodhpur , Rajasthan', '2000-04-05', 'Male', 'Single'),
(2, 'gangwanikeshav2004@gmail.com', 'gangwani2004', 'Keshav', 'Gangwani', 'House No 56 , Gopi Krishna Vihar , Jodhpur , Rajasthan', '2004-04-25', 'Male', 'Single'),
(3, 'ma@gmail.com', 'm123', 'mayank', 'jh', '', '0000-00-00', '', ''),
(4, 'rahul@gmail.com', 'r123', 'rahul', 'g', '', '0000-00-00', '', ''),
(5, 'new@gmail.com', 'new123', 'new', 'new', '', '0000-00-00', '', ''),
(6, 'mayank@gmail.com', 'm123', 'mayank', 'jhamtani', '', '0000-00-00', 'Male', ''),
(7, 'khushijhamtani9@gmail.com', 'khushi ', 'khushi ', 'jhamtani', '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_name` varchar(20) NOT NULL,
  `review_villaname` varchar(25) NOT NULL,
  `review_date` date NOT NULL,
  `review_star` int(11) NOT NULL,
  `review_message` text NOT NULL,
  `review_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_name`, `review_villaname`, `review_date`, `review_star`, `review_message`, `review_email`) VALUES
(1, 'Karan Batra', 'IGloo Homes', '2025-06-06', 5, 'Absolutely stunning experience! The villa was luxurious, spotless, and had a breathtaking view. The staff were courteous', 'gangwanikeshav2004@gmail.com'),
(2, 'Priya Mehta', 'Glambirds Stay', '2025-07-08', 5, 'The location was amazing and peaceful. Villa was clean and well-furnished. Just wish the Wi-Fi was faster.', 'gangwanikeshav2004@gmail.com'),
(3, 'Keshav Gangwani', 'Valley Views', '2025-05-23', 3, 'Decent stay. Rooms were spacious but some maintenance was needed. Good for a short trip.', 'gangwanikeshav2004@gmail.com'),
(4, 'Ayesha Sheikh', 'Valley Views', '2025-06-01', 4, 'Really enjoyed the stay! Beautiful ambiance and helpful staff. Just a few mosquitoes in the evening — maybe consider mor', 'mayank@gmail.com'),
(5, 'Rahul Jain', 'Glambirds Stay', '2025-04-08', 3, 'Expected more. The photos online were better than the actual villa. Hot water didn’t work properly.', 'gangwanikeshav2004@gmail.com'),
(6, 'Sandeep Singh', 'IGloo Homes', '2025-04-23', 5, 'It felt like a dream vacation. Loved the private pool and the interior design. Everything was perfect, from booking to check-out.', 'gangwanikeshav2004@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `villa`
--

CREATE TABLE `villa` (
  `villa_id` int(11) NOT NULL,
  `villa_name` varchar(25) NOT NULL,
  `villa_price` bigint(20) NOT NULL,
  `villa_discount` bigint(20) NOT NULL,
  `villa_imagem` text NOT NULL,
  `villa_image1` text NOT NULL,
  `villa_image2` text NOT NULL,
  `villa_image3` text NOT NULL,
  `villa_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `villa`
--

INSERT INTO `villa` (`villa_id`, `villa_name`, `villa_price`, `villa_discount`, `villa_imagem`, `villa_image1`, `villa_image2`, `villa_image3`, `villa_status`) VALUES
(2, 'Valley Views', 9600, 500, 'v2.jpg', 'v21.jpg', 'v22.jpg', 'v23.jpg', 1),
(3, 'IGloo Homes', 11000, 1100, 'v3.jpg', 'v31.jpg', 'v32.jpg', 'v33.jpg', 1),
(4, 'Glambirds Stays', 7599, 749, 'v1.jpg', 'v111.jpg', 'v112.jpg', 'v113.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_panel`
--
ALTER TABLE `admin_panel`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`reg _id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `villa`
--
ALTER TABLE `villa`
  ADD PRIMARY KEY (`villa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_panel`
--
ALTER TABLE `admin_panel`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `reg _id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `villa`
--
ALTER TABLE `villa`
  MODIFY `villa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
