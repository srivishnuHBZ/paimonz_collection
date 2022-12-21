-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 08:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `may_collection_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_desc`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Chanel', 'Short Description of the Brand', 'mc_04-Jun-2019_19-47-21.png', '2019-06-05 00:17:21', '2019-06-05 00:17:21'),
(2, 'Gucci', 'Short Description of the Brand', 'mc_04-Jun-2019_19-47-48.png', '2019-06-05 00:17:48', '2019-06-05 00:17:48'),
(4, 'Versace', 'Short Description of the Brand', 'mc_04-Jun-2019_19-48-50.png', '2019-06-05 00:18:50', '2019-06-05 00:18:50'),
(5, 'Louis Vuitton', 'Short Description of the Brand', 'mc_04-Jun-2019_19-49-02.png', '2019-06-05 00:19:02', '2019-06-05 00:19:02'),
(7, 'Michael Kors', 'Short Description of the Brand', 'mc_08-Jun-2019_21-07-31.png', '2019-06-09 01:37:31', '2019-06-09 01:37:31'),
(8, 'Calvin Klein', 'Calvin Klein', 'mc_10-Oct-2021_15-34-00.jpg', '2021-10-10 21:34:00', '2021-10-10 21:34:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
