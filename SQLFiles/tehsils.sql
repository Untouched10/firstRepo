-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 05:58 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `check`
--

-- --------------------------------------------------------

--
-- Table structure for table `tehsils`
--

CREATE TABLE `tehsils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tid` int(11) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `did` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tehsils`
--

INSERT INTO `tehsils` (`id`, `tid`, `tname`, `did`) VALUES
(1, 1, 'Ahmednagar City', 1),
(2, 2, 'Ahmednagar Rural', 1),
(3, 3, 'Akole', 1),
(4, 4, 'Jamkhed', 1),
(5, 5, 'Karjat', 1),
(6, 6, 'Kopargaon', 1),
(7, 7, 'Newasa', 1),
(8, 8, 'Pathardi', 1),
(9, 9, 'Rahata', 1),
(10, 10, 'Rahuri', 1),
(11, 11, 'Rahuri Rural', 1),
(12, 12, 'Sangamner', 1),
(13, 13, 'Shevgaon', 1),
(14, 14, 'Shrigonda', 1),
(15, 15, 'Shrirampur', 1),
(16, 16, 'Sinnar', 1),
(17, 1, 'Akola', 2),
(18, 2, 'Akot', 2),
(19, 3, 'Balapur', 2),
(20, 4, 'Barshitakli', 2),
(21, 5, 'Murtijapur', 2),
(22, 6, 'Patur', 2),
(23, 7, 'Telhara', 2),
(24, 1, 'Achalpur', 3),
(25, 2, 'Amaravati', 3),
(26, 3, 'Anjangaon Surji', 3),
(27, 4, 'Chandur Railway', 3),
(28, 5, 'Chandur Bazar', 3),
(29, 6, 'Daryapur', 3),
(30, 7, 'Dhamangaon Railway', 3),
(31, 8, 'Morshi', 3),
(32, 9, 'Nandgaon Khandeshwar', 3),
(33, 10, 'Teosa', 3),
(34, 11, 'Warud', 3),
(35, 1, 'Anantapur', 1),
(36, 2, 'Dharmavaram', 1),
(37, 3, 'Gooty', 1),
(38, 4, 'Hindupur', 1),
(39, 5, 'Kadiri', 1),
(40, 6, 'Kalyandurg', 1),
(41, 7, 'Madakasira', 1),
(42, 8, 'Puttaparthi', 1),
(43, 9, 'Rapur', 1),
(44, 10, 'Rayadurg', 1),
(45, 11, 'Tadipatri', 1),
(46, 12, 'Uravakonda', 1),
(47, 1, 'Chittoor', 2),
(48, 2, 'Madanapalle', 2),
(49, 3, 'Tirupati', 2),
(50, 4, 'Palamaner', 2),
(51, 5, 'Punganur', 2),
(52, 6, 'Puttur', 2),
(53, 7, 'Srikalahasti', 2),
(54, 8, 'Nagari', 2),
(55, 9, 'Sathyavedu', 2),
(56, 10, 'Chandragiri', 2),
(57, 11, 'Nindra', 2),
(58, 12, 'Chinnagottigallu', 2),
(59, 1, 'Kakinada', 3),
(60, 2, 'Rajahmundry', 3),
(61, 3, 'Amalapuram', 3),
(62, 4, 'Kothapeta', 3),
(63, 5, 'Mandapeta', 3),
(64, 6, 'Pithapuram', 3),
(65, 7, 'Peddapuram', 3),
(66, 8, 'Rampachodavaram', 3),
(67, 9, 'Razole', 3),
(68, 10, 'Samalkota', 3),
(69, 11, 'Tuni', 3),
(70, 12, 'Yeleswaram', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tehsils`
--
ALTER TABLE `tehsils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `did` (`did`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tehsils`
--
ALTER TABLE `tehsils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
