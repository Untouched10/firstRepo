-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 04:55 AM
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
-- Database: `practiceforfetch`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `did` int(11) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `sid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `did`, `dname`, `sid`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ahmednagar', 10, NULL, NULL),
(2, 2, 'Akola', 10, NULL, NULL),
(3, 3, 'Amravati', 10, NULL, NULL),
(4, 4, 'Aurangabad', 10, NULL, NULL),
(5, 5, 'Beed', 10, NULL, NULL),
(6, 6, 'Bhandara', 10, NULL, NULL),
(7, 7, 'Buldhana', 10, NULL, NULL),
(8, 8, 'Chandrapur', 10, NULL, NULL),
(9, 9, 'Dhule', 10, NULL, NULL),
(10, 10, 'Gadchiroli', 10, NULL, NULL),
(11, 11, 'Gondia', 10, NULL, NULL),
(12, 12, 'Hingoli', 10, NULL, NULL),
(13, 13, 'Jalgaon', 10, NULL, NULL),
(14, 14, 'Jalna', 10, NULL, NULL),
(15, 15, 'Kolhapur', 10, NULL, NULL),
(16, 16, 'Latur', 10, NULL, NULL),
(17, 17, 'Mumbai City', 10, NULL, NULL),
(18, 18, 'Mumbai Suburban', 10, NULL, NULL),
(19, 19, 'Nagpur', 10, NULL, NULL),
(20, 20, 'Nanded', 10, NULL, NULL),
(21, 21, 'Nandurbar', 10, NULL, NULL),
(22, 22, 'Nashik', 10, NULL, NULL),
(23, 23, 'Osmanabad', 10, NULL, NULL),
(24, 24, 'Palghar', 10, NULL, NULL),
(25, 25, 'Parbhani', 10, NULL, NULL),
(26, 26, 'Pune', 10, NULL, NULL),
(27, 27, 'Raigad', 10, NULL, NULL),
(28, 28, 'Ratnagiri', 10, NULL, NULL),
(29, 29, 'Sangli', 10, NULL, NULL),
(30, 30, 'Satara', 10, NULL, NULL),
(31, 31, 'Sindhudurg', 10, NULL, NULL),
(32, 32, 'Solapur', 10, NULL, NULL),
(33, 33, 'Thane', 10, NULL, NULL),
(34, 34, 'Wardha', 10, NULL, NULL),
(35, 35, 'Washim', 10, NULL, NULL),
(36, 36, 'Yavatmal', 10, NULL, NULL),
(37, 1, 'Anantapur', 1, NULL, NULL),
(38, 2, 'Chittoor', 1, NULL, NULL),
(39, 3, 'East Godavari', 1, NULL, NULL),
(40, 4, 'Guntur', 1, NULL, NULL),
(41, 5, 'Krishna', 1, NULL, NULL),
(42, 6, 'Kurnool', 1, NULL, NULL),
(43, 7, 'Nellore', 1, NULL, NULL),
(44, 8, 'Prakasam', 1, NULL, NULL),
(45, 9, 'Srikakulam', 1, NULL, NULL),
(46, 10, 'Visakhapatnam', 1, NULL, NULL),
(47, 11, 'Vizianagaram', 1, NULL, NULL),
(48, 12, 'West Godavari', 1, NULL, NULL),
(49, 13, 'YSR Kadapa', 1, NULL, NULL),
(50, 1, 'Tawang', 2, NULL, NULL),
(51, 2, 'West Kameng', 2, NULL, NULL),
(52, 3, 'East Kameng', 2, NULL, NULL),
(53, 4, 'Papum Pare', 2, NULL, NULL),
(54, 5, 'Kurung Kumey', 2, NULL, NULL),
(55, 6, 'Kra Daadi', 2, NULL, NULL),
(56, 7, 'Lower Subansiri', 2, NULL, NULL),
(57, 8, 'Upper Subansiri', 2, NULL, NULL),
(58, 9, 'West Siang', 2, NULL, NULL),
(59, 10, 'East Siang', 2, NULL, NULL),
(60, 11, 'Siang', 2, NULL, NULL),
(61, 12, 'Upper Siang', 2, NULL, NULL),
(62, 13, 'Lower Siang', 2, NULL, NULL),
(63, 14, 'Lower Dibang Valley', 2, NULL, NULL),
(64, 15, 'Dibang Valley', 2, NULL, NULL),
(65, 16, 'Anjaw', 2, NULL, NULL),
(66, 17, 'Lohit', 2, NULL, NULL),
(67, 18, 'Namsai', 2, NULL, NULL),
(68, 19, 'Changlang', 2, NULL, NULL),
(69, 20, 'Tirap', 2, NULL, NULL),
(70, 21, 'Longding', 2, NULL, NULL),
(71, 22, 'Capital Complex', 2, NULL, NULL),
(72, 23, 'Lepa Rada', 2, NULL, NULL),
(73, 24, 'Shi Yomi', 2, NULL, NULL),
(74, 25, 'Pakke-Kessang', 2, NULL, NULL),
(75, 1, 'Baksa', 3, NULL, NULL),
(76, 2, 'Barpeta', 3, NULL, NULL),
(77, 3, 'Biswanath', 3, NULL, NULL),
(78, 4, 'Bongaigaon', 3, NULL, NULL),
(79, 5, 'Cachar', 3, NULL, NULL),
(80, 6, 'Charaideo', 3, NULL, NULL),
(81, 7, 'Chirang', 3, NULL, NULL),
(82, 8, 'Darrang', 3, NULL, NULL),
(83, 9, 'Dhemaji', 3, NULL, NULL),
(84, 10, 'Dhubri', 3, NULL, NULL),
(85, 11, 'Dibrugarh', 3, NULL, NULL),
(86, 12, 'Dima Hasao', 3, NULL, NULL),
(87, 13, 'Goalpara', 3, NULL, NULL),
(88, 14, 'Golaghat', 3, NULL, NULL),
(89, 15, 'Hailakandi', 3, NULL, NULL),
(90, 16, 'Hojai', 3, NULL, NULL),
(91, 17, 'Jorhat', 3, NULL, NULL),
(92, 18, 'Kamrup', 3, NULL, NULL),
(93, 19, 'Kamrup Metropolitan', 3, NULL, NULL),
(94, 20, 'Karbi Anglong', 3, NULL, NULL),
(95, 21, 'Karimganj', 3, NULL, NULL),
(96, 22, 'Kokrajhar', 3, NULL, NULL),
(97, 23, 'Lakhimpur', 3, NULL, NULL),
(98, 24, 'Majuli', 3, NULL, NULL),
(99, 25, 'Morigaon', 3, NULL, NULL),
(100, 26, 'Nagaon', 3, NULL, NULL),
(101, 27, 'Nalbari', 3, NULL, NULL),
(102, 28, 'Sivasagar', 3, NULL, NULL),
(103, 29, 'Sonitpur', 3, NULL, NULL),
(104, 30, 'South Salmara-Mankachar', 3, NULL, NULL),
(105, 31, 'Tinsukia', 3, NULL, NULL),
(106, 32, 'Udalguri', 3, NULL, NULL),
(107, 33, 'West Karbi Anglong', 3, NULL, NULL),
(108, 1, 'Araria', 4, NULL, NULL),
(109, 2, 'Arwal', 4, NULL, NULL),
(110, 3, 'Aurangabad', 4, NULL, NULL),
(111, 4, 'Banka', 4, NULL, NULL),
(112, 5, 'Begusarai', 4, NULL, NULL),
(113, 6, 'Bhagalpur', 4, NULL, NULL),
(114, 7, 'Bhojpur', 4, NULL, NULL),
(115, 8, 'Buxar', 4, NULL, NULL),
(116, 9, 'Darbhanga', 4, NULL, NULL),
(117, 10, 'East Champaran', 4, NULL, NULL),
(118, 11, 'Gaya', 4, NULL, NULL),
(119, 12, 'Gopalganj', 4, NULL, NULL),
(120, 13, 'Jamui', 4, NULL, NULL),
(121, 14, 'Jehanabad', 4, NULL, NULL),
(122, 15, 'Kaimur', 4, NULL, NULL),
(123, 16, 'Katihar', 4, NULL, NULL),
(124, 17, 'Khagaria', 4, NULL, NULL),
(125, 18, 'Kishanganj', 4, NULL, NULL),
(126, 19, 'Lakhisarai', 4, NULL, NULL),
(127, 20, 'Madhepura', 4, NULL, NULL),
(128, 21, 'Madhubani', 4, NULL, NULL),
(129, 22, 'Munger', 4, NULL, NULL),
(130, 23, 'Muzaffarpur', 4, NULL, NULL),
(131, 24, 'Nalanda', 4, NULL, NULL),
(132, 25, 'Nawada', 4, NULL, NULL),
(133, 26, 'Patna', 4, NULL, NULL),
(134, 27, 'Purnia', 4, NULL, NULL),
(135, 28, 'Rohtas', 4, NULL, NULL),
(136, 29, 'Saharsa', 4, NULL, NULL),
(137, 30, 'Samastipur', 4, NULL, NULL),
(138, 31, 'Saran', 4, NULL, NULL),
(139, 32, 'Sheikhpura', 4, NULL, NULL),
(140, 33, 'Sheohar', 4, NULL, NULL),
(141, 34, 'Sitamarhi', 4, NULL, NULL),
(142, 35, 'Siwan', 4, NULL, NULL),
(143, 36, 'Supaul', 4, NULL, NULL),
(144, 37, 'Vaishali', 4, NULL, NULL),
(145, 38, 'West Champaran', 4, NULL, NULL),
(146, 1, 'Balod', 5, NULL, NULL),
(147, 2, 'Baloda Bazar', 5, NULL, NULL),
(148, 3, 'Balrampur', 5, NULL, NULL),
(149, 4, 'Bastar', 5, NULL, NULL),
(150, 5, 'Bemetara', 5, NULL, NULL),
(151, 6, 'Bijapur', 5, NULL, NULL),
(152, 7, 'Bilaspur', 5, NULL, NULL),
(153, 8, 'Dantewada', 5, NULL, NULL),
(154, 9, 'Dhamtari', 5, NULL, NULL),
(155, 10, 'Durg', 5, NULL, NULL),
(156, 11, 'Gariaband', 5, NULL, NULL),
(157, 12, 'Janjgir-Champa', 5, NULL, NULL),
(158, 13, 'Jashpur', 5, NULL, NULL),
(159, 14, 'Kanker', 5, NULL, NULL),
(160, 15, 'Kawardha', 5, NULL, NULL),
(161, 16, 'Kondagaon', 5, NULL, NULL),
(162, 17, 'Korba', 5, NULL, NULL),
(163, 18, 'Koriya', 5, NULL, NULL),
(164, 19, 'Mahasamund', 5, NULL, NULL),
(165, 20, 'Mungeli', 5, NULL, NULL),
(166, 21, 'Narayanpur', 5, NULL, NULL),
(167, 22, 'Raigarh', 5, NULL, NULL),
(168, 23, 'Raipur', 5, NULL, NULL),
(169, 24, 'Rajnandgaon', 5, NULL, NULL),
(170, 25, 'Sukma', 5, NULL, NULL),
(171, 26, 'Surajpur', 5, NULL, NULL),
(172, 27, 'Surguja', 5, NULL, NULL),
(173, 28, 'Bijapur', 5, NULL, NULL),
(174, 1, 'North Goa', 6, NULL, NULL),
(175, 2, 'South Goa', 6, NULL, NULL),
(176, 1, 'Ahmedabad', 7, NULL, NULL),
(177, 2, 'Amreli', 7, NULL, NULL),
(178, 3, 'Anand', 7, NULL, NULL),
(179, 4, 'Aravalli', 7, NULL, NULL),
(180, 5, 'Banaskantha', 7, NULL, NULL),
(181, 6, 'Bharuch', 7, NULL, NULL),
(182, 7, 'Bhavnagar', 7, NULL, NULL),
(183, 8, 'Botad', 7, NULL, NULL),
(184, 9, 'Chhota Udaipur', 7, NULL, NULL),
(185, 10, 'Dahod', 7, NULL, NULL),
(186, 11, 'Dang', 7, NULL, NULL),
(187, 12, 'Devbhoomi Dwarka', 7, NULL, NULL),
(188, 13, 'Gandhinagar', 7, NULL, NULL),
(189, 14, 'Gir Somnath', 7, NULL, NULL),
(190, 15, 'Jamnagar', 7, NULL, NULL),
(191, 16, 'Junagadh', 7, NULL, NULL),
(192, 17, 'Kheda', 7, NULL, NULL),
(193, 18, 'Kutch', 7, NULL, NULL),
(194, 19, 'Mahisagar', 7, NULL, NULL),
(195, 20, 'Mehsana', 7, NULL, NULL),
(196, 21, 'Morbi', 7, NULL, NULL),
(197, 22, 'Narmada', 7, NULL, NULL),
(198, 23, 'Navsari', 7, NULL, NULL),
(199, 24, 'Panchmahal', 7, NULL, NULL),
(200, 25, 'Patan', 7, NULL, NULL),
(201, 26, 'Porbandar', 7, NULL, NULL),
(202, 27, 'Rajkot', 7, NULL, NULL),
(203, 28, 'Sabarkantha', 7, NULL, NULL),
(204, 29, 'Surat', 7, NULL, NULL),
(205, 30, 'Surendranagar', 7, NULL, NULL),
(206, 31, 'Tapi', 7, NULL, NULL),
(207, 32, 'Vadodara', 7, NULL, NULL),
(208, 33, 'Valsad', 7, NULL, NULL),
(209, 1, 'Ambala', 8, NULL, NULL),
(210, 2, 'Bhiwani', 8, NULL, NULL),
(211, 3, 'Charkhi Dadri', 8, NULL, NULL),
(212, 4, 'Faridabad', 8, NULL, NULL),
(213, 5, 'Fatehabad', 8, NULL, NULL),
(214, 6, 'Gurugram', 8, NULL, NULL),
(215, 7, 'Hisar', 8, NULL, NULL),
(216, 8, 'Jhajjar', 8, NULL, NULL),
(217, 9, 'Jind', 8, NULL, NULL),
(218, 10, 'Kaithal', 8, NULL, NULL),
(219, 11, 'Karnal', 8, NULL, NULL),
(220, 12, 'Kurukshetra', 8, NULL, NULL),
(221, 13, 'Mahendragarh', 8, NULL, NULL),
(222, 14, 'Nuh', 8, NULL, NULL),
(223, 15, 'Palwal', 8, NULL, NULL),
(224, 16, 'Panchkula', 8, NULL, NULL),
(225, 17, 'Panipat', 8, NULL, NULL),
(226, 18, 'Rewari', 8, NULL, NULL),
(227, 19, 'Rohtak', 8, NULL, NULL),
(228, 20, 'Sirsa', 8, NULL, NULL),
(229, 21, 'Sonipat', 8, NULL, NULL),
(230, 22, 'Yamunanagar', 8, NULL, NULL),
(231, 1, 'Bilaspur', 9, NULL, NULL),
(232, 2, 'Chamba', 9, NULL, NULL),
(233, 3, 'Hamirpur', 9, NULL, NULL),
(234, 4, 'Kangra', 9, NULL, NULL),
(235, 5, 'Kinnaur', 9, NULL, NULL),
(236, 6, 'Kullu', 9, NULL, NULL),
(237, 7, 'Lahaul and Spiti', 9, NULL, NULL),
(238, 8, 'Mandi', 9, NULL, NULL),
(239, 9, 'Shimla', 9, NULL, NULL),
(240, 10, 'Sirmaur', 9, NULL, NULL),
(241, 11, 'Solan', 9, NULL, NULL),
(242, 12, 'Una', 9, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_sid_foreign` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_sid_foreign` FOREIGN KEY (`sid`) REFERENCES `states` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
