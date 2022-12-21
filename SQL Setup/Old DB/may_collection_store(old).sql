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

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_desc`, `created_at`, `updated_at`) VALUES
(1, 'Bags', 'Short Description of the Category', '2019-06-05 00:26:02', '2019-06-05 00:26:02'),
(2, 'Glasses', 'Short Description of the Category', '2019-06-05 00:26:12', '2019-06-05 00:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_parent_id` int(11) NOT NULL,
  `delivery_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `city_name`, `city_parent_id`, `delivery_fee`) VALUES
(1, 'Selangor', 0, 0),
(2, 'Perak', 0, 0),
(3, 'Negeri Sembilan', 0, 0),
(4, 'Johor', 0, 0),
(5, 'Pahang', 0, 0),
(6, 'Kedah', 0, 0),
(9, 'Kelantan', 0, 0),
(10, 'Terengganu', 0, 0),
(11, 'Malacca', 0, 0),
(15, 'J&T Express', 1, 10),
(16, 'J&T Express', 2, 10),
(17, 'J&T Express', 3, 10),
(19, 'Pos Laju', 1, 13),
(20, 'Pos Laju', 2, 13),
(21, 'Pos Laju', 3, 13),
(23, 'Ninja Van Malaysia', 1, 15),
(24, 'Ninja Van Malaysia', 2, 15),
(25, 'Ninja Van Malaysia', 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_addr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `cus_phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cus_name`, `cus_email`, `cus_addr`, `delivery_id`, `cus_phone`, `status`, `total`, `created_at`, `updated_at`) VALUES
(1, 'Nik Hannan', 'nikhannan@gmail.com', 'Kelantan', 3, '0123456789', 0, 2999, '2019-06-13 20:55:59', '2019-06-15 07:45:58'),
(2, 'Razin', 'razin@gmail.com', 'Kuala Lumpur', 5, '0123456789', 0, 2600, '2019-06-13 20:58:18', '2021-10-11 12:09:16'),
(3, 'Ruthra', 'ruthra69@gmail.com', 'Puchong', 9, '0123456789', 0, 5450, '2019-06-14 15:16:05', '2019-06-15 07:58:16'),
(4, 'Hazwani', 'hazwani@gmail.com', 'Shah Alam', 4, '0123456789', 0, 3350, '2020-01-26 19:29:47', '2021-10-10 21:50:54'),
(6, 'Vishnu', 'vishnu@email.com', 'Perak', 4, '0123456789', 0, 1500, '2020-03-11 02:55:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `order_qty`) VALUES
(1, 1, 11, 1),
(2, 1, 8, 3),
(3, 2, 8, 2),
(4, 3, 12, 1),
(5, 3, 10, 1),
(6, 4, 14, 1),
(7, 5, 14, 1),
(8, 5, 12, 1),
(9, 6, 12, 2),
(10, 7, 11, 1),
(11, 8, 14, 1),
(12, 8, 12, 5),
(13, 9, 7, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_category_id`, `sub_name`, `sub_desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wallets', 'Short Description of the Sub Category', '2019-06-05 00:26:37', '2019-06-05 00:26:37'),
(2, 1, 'Sling Bags', 'Short Description of the Sub Category', '2019-06-05 00:26:44', '2019-06-05 00:26:44'),
(3, 1, 'Handbags', 'Short Description of the Sub Category', '2019-06-05 00:26:55', '2019-06-06 08:09:43'),
(4, 2, 'Sunglasses', 'Short Description of the Sub Category', '2019-06-05 00:28:32', '2019-06-05 00:28:32'),
(5, 2, 'Eyeglasses', 'Short Description of the Sub Category', '2019-06-05 00:28:44', '2019-06-05 00:28:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_specific_id` (`product_specific_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
