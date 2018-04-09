-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 07:37 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_dropdowns`
--

CREATE TABLE `dynamic_dropdowns` (
  `id` int(10) UNSIGNED NOT NULL,
  `Country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `State` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic__dropdowns`
--

INSERT INTO `dynamic_dropdowns` (`id`, `Country`, `State`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Pakistan', 'Punjab', 'Lahore', NULL, NULL),
(2, 'Pakistan', 'Punjab', 'Faisalabad', NULL, NULL),
(3, 'Pakistan', 'Punjab', 'Multan', NULL, NULL),
(4, 'Pakistan', 'Punjab', 'Rawalpindi', NULL, NULL),
(5, 'Pakistan', 'Punjab', 'Gujranwala', NULL, NULL),
(6, 'Pakistan', 'Punjab', 'Gujrat', NULL, NULL),
(7, 'Pakistan', 'Sindh', 'Karachi', NULL, NULL),
(8, 'Pakistan', 'Sindh', 'Hyderabad', NULL, NULL),
(9, 'Pakistan', 'Sindh', 'Sukkur', NULL, NULL),
(10, 'Pakistan', 'Sindh', 'Larkana', NULL, NULL),
(11, 'Pakistan', 'Sindh', 'Dadu', NULL, NULL),
(12, 'Pakistan', 'Sindh', 'Mirpur Khas', NULL, NULL),
(13, 'Pakistan', 'KPK', 'Peshawar', NULL, NULL),
(14, 'Pakistan', 'KPK', 'Mardan', NULL, NULL),
(15, 'Pakistan', 'KPK', 'Khoat', NULL, NULL),
(16, 'Pakistan', 'KPK', 'Abbottabad', NULL, NULL),
(17, 'Pakistan', 'Balochistan', 'Queta', NULL, NULL),
(18, 'Pakistan', 'Balochistan', 'Chaman', NULL, NULL),
(19, 'Pakistan', 'Balochistan', 'Turbat', NULL, NULL),
(20, 'Pakistan', 'Balochistan', 'Sibi', NULL, NULL),
(21, 'USA', 'New York', 'New York', NULL, NULL),
(22, 'USA', 'California', 'Los Angeles', NULL, NULL),
(23, 'USA', 'Illinois', 'Chicago', NULL, NULL),
(24, 'USA', 'Texas', 'Houston', NULL, NULL),
(25, 'USA', 'Arizona', 'Phoenix', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dynamic__dropdowns`
--
ALTER TABLE `dynamic_dropdowns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dynamic__dropdowns`
--
ALTER TABLE `dynamic_dropdowns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
