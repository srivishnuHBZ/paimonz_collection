-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 08:41 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_specific_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `spec1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_specific_id`, `name`, `short_desc`, `long_desc`, `price`, `quantity`, `spec1`, `spec2`, `spec3`, `spec4`, `spec5`, `spec6`, `thumbnail`, `img1`, `img2`, `img3`, `category_id`, `subcategory_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(7, 'G01', 'Marmont Mini Round Shoulder bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1255, 5, 'Cognac', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-02-48.jpg', 'mc_p_img1_08-Jun-2019_21-02-48.jpg', 'mc_p_img2_08-Jun-2019_21-02-48.jpg', 'mc_p_img3_08-Jun-2019_21-02-48.jpg', 1, 3, 2, '2019-06-09 01:32:48', '2021-10-11 12:10:16'),
(8, 'G02', 'Light Ophidia Small Shoulder Bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 2999, 8, 'White', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-04-00.jpg', 'mc_p_img1_08-Jun-2019_21-04-00.jpg', 'mc_p_img2_08-Jun-2019_21-04-00.jpg', 'mc_p_img3_08-Jun-2019_21-04-00.jpg', 1, 3, 2, '2019-06-09 01:34:00', '2019-06-15 07:51:37'),
(9, 'MK01', 'Jet Set East West Crossgrain Leather Crossbody', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1999, 2, 'Olive and Gold', 'Textured Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-10-44.jpg', 'mc_p_img1_08-Jun-2019_21-10-44.jpg', 'mc_p_img2_08-Jun-2019_21-10-44.jpg', 'mc_p_img3_08-Jun-2019_21-10-44.jpg', 1, 3, 7, '2019-06-09 01:40:44', '2019-06-09 01:40:44'),
(10, 'MK02', 'Mercer Small Leather Accordion Tote', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1399, 3, 'White', 'Pebbled Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-13-20.jpg', 'mc_p_img1_08-Jun-2019_21-13-20.jpg', 'mc_p_img2_08-Jun-2019_21-13-20.jpg', 'mc_p_img3_08-Jun-2019_21-13-20.jpg', 1, 3, 7, '2019-06-09 01:43:20', '2019-06-09 01:43:20'),
(11, 'LV01', 'Santa Monica', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 3200, 2, 'Venus', 'Damier Ebene', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-15-13.jpg', 'mc_p_img1_08-Jun-2019_21-15-13.jpg', 'mc_p_img2_08-Jun-2019_21-15-13.jpg', 'mc_p_img3_08-Jun-2019_21-15-13.jpg', 1, 3, 5, '2019-06-09 01:45:13', '2021-10-11 12:02:13'),
(12, 'LV02', 'Twisted MM', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1699, 5, 'Midnight Blue', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-18-15.jpg', 'mc_p_img1_08-Jun-2019_21-18-15.jpg', 'mc_p_img2_08-Jun-2019_21-18-15.jpg', 'mc_p_img3_08-Jun-2019_21-18-15.jpg', 1, 3, 5, '2019-06-09 01:48:15', '2019-06-15 07:58:27'),
(13, 'V01', 'The Clash Shoulder Bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 2200, 3, 'Blue', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-21-09.png', 'mc_p_img1_08-Jun-2019_21-21-09.png', 'mc_p_img2_08-Jun-2019_21-21-09.png', 'mc_p_img3_08-Jun-2019_21-21-09.png', 1, 3, 4, '2019-06-09 01:51:09', '2019-06-09 01:51:09'),
(14, 'V02', 'Quilted Icon Ducal Carry Bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 3200, 1, 'Pink', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-22-39.png', 'mc_p_img1_08-Jun-2019_21-22-39.png', 'mc_p_img2_08-Jun-2019_21-22-39.png', 'mc_p_img3_08-Jun-2019_21-22-39.png', 1, 3, 4, '2019-06-09 01:52:39', '2020-01-26 19:31:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_specific_id` (`product_specific_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
