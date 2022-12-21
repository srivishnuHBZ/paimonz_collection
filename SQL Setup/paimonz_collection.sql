-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 07:49 PM
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
-- Database: `paimonz_collection`
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
  `id` bigint(100) NOT NULL,
  `cus_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_addr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `cus_phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `cardname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardnumber` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expmonth` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expyear` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cus_name`, `cus_email`, `cus_addr`, `delivery_id`, `cus_phone`, `status`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `total`, `created_at`, `updated_at`) VALUES
(1, 'Marina', 'marina@gmail.com', 'No.5, Jalan Cempaka, Taman Cempaka', 15, '0195672356', 0, 'Marina Hassan', '6548965845213256', '07', '2024', 3210, '2021-10-12 01:21:41', '2021-10-12 15:57:14'),
(2, 'Lisa', 'lisa1998@yahoo.com', 'No.3, Jalan Sabar 65/118', 20, '0123456789', 0, 'Lisa Mellisa', '6584985636521254', '04', '2023', 4803, '2021-10-12 15:56:47', '2021-10-12 15:57:10'),
(3, 'bla ', 'bla@gmail.com', 'bla', 19, '026666116', 0, 'bla', '9491284124812', '09', '2023', 1712, '2021-10-13 10:08:45', '0000-00-00 00:00:00');

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
(14, 2, 12, 1),
(15, 2, 6, 1),
(16, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(100) NOT NULL,
  `product_specific_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'B01', 'Marmont Mini Round Shoulder bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1255, 5, 'Cognac', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-02-48.jpg', 'mc_p_img1_08-Jun-2019_21-02-48.jpg', 'mc_p_img2_08-Jun-2019_21-02-48.jpg', 'mc_p_img3_08-Jun-2019_21-02-48.jpg', 1, 3, 2, '2021-10-13 01:32:48', '2021-10-11 12:10:16'),
(2, 'B02', 'Light Ophidia Small Shoulder Bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 2999, 8, 'White', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-04-00.jpg', 'mc_p_img1_08-Jun-2019_21-04-00.jpg', 'mc_p_img2_08-Jun-2019_21-04-00.jpg', 'mc_p_img3_08-Jun-2019_21-04-00.jpg', 1, 3, 2, '2022-06-15 01:34:00', '2019-06-15 07:51:37'),
(3, 'B04', 'Twisted MM', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1699, 5, 'Midnight Blue', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-18-15.jpg', 'mc_p_img1_08-Jun-2019_21-18-15.jpg', 'mc_p_img2_08-Jun-2019_21-18-15.jpg', 'mc_p_img3_08-Jun-2019_21-18-15.jpg', 1, 3, 5, '2022-06-15 01:48:15', '2019-06-15 07:58:27'),
(4, 'B05', 'Jet Set East West Crossgrain Leather Crossbody', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1999, 2, 'Olive and Gold', 'Textured Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-10-44.jpg', 'mc_p_img1_08-Jun-2019_21-10-44.jpg', 'mc_p_img2_08-Jun-2019_21-10-44.jpg', 'mc_p_img3_08-Jun-2019_21-10-44.jpg', 1, 3, 7, '2022-06-21 01:40:44', '2019-06-09 01:40:44'),
(5, 'B06', 'Mercer Small Leather Accordion Tote', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 1399, 3, 'White', 'Pebbled Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-13-20.jpg', 'mc_p_img1_08-Jun-2019_21-13-20.jpg', 'mc_p_img2_08-Jun-2019_21-13-20.jpg', 'mc_p_img3_08-Jun-2019_21-13-20.jpg', 1, 3, 7, '2019-06-05 01:43:20', '2019-06-09 01:43:20'),
(6, 'B07', 'The Clash Shoulder Bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 2200, 3, 'Blue', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-21-09.png', 'mc_p_img1_08-Jun-2019_21-21-09.png', 'mc_p_img2_08-Jun-2019_21-21-09.png', 'mc_p_img3_08-Jun-2019_21-21-09.png', 1, 3, 4, '2022-06-22 01:51:09', '2019-06-09 01:51:09'),
(7, 'BO3', 'Santa Monica', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 3200, 2, 'Venus', 'Damier Ebene', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-15-13.jpg', 'mc_p_img1_08-Jun-2019_21-15-13.jpg', 'mc_p_img2_08-Jun-2019_21-15-13.jpg', 'mc_p_img3_08-Jun-2019_21-15-13.jpg', 1, 3, 5, '2019-06-09 01:45:13', '2021-10-11 12:02:13'),
(8, 'BO8', 'Quilted Icon Ducal Carry Bag', 'Short Description of the bag', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus illo fugiat ea accusamus inventore, sint, animi tempore blanditiis repudiandae itaque quidem aliquam facere suscipit ab, porro maxime repellendus accusantium magni.', 3200, 0, 'Pink', 'Leather', 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'mc_p_thumb_08-Jun-2019_21-22-39.png', 'mc_p_img1_08-Jun-2019_21-22-39.png', 'mc_p_img2_08-Jun-2019_21-22-39.png', 'mc_p_img3_08-Jun-2019_21-22-39.png', 1, 3, 4, '2019-06-09 01:52:39', '2021-10-12 15:54:30'),
(9, 'EG01', 'VERSACE WOMEN EYEGLASS', 'Sunglasses by Versace', 'Brand: Versace\r\nGender: Women\r\nYear: 2020', 617, 5, 'Frame Colour: Black Gold', 'Frame Shape: Cat Eye', 'Frame Style: Full Rim', 'Frame Material: Metal', 'Lens Material: Customisable', 'Condition: New', 'mc_p_thumb_12-Oct-2021_09-30-40.png', 'mc_p_img1_12-Oct-2021_09-30-40.png', 'mc_p_img2_12-Oct-2021_09-30-40.png', 'mc_p_img3_12-Oct-2021_09-30-40.png', 2, 5, 4, '2021-10-12 15:30:40', '2021-10-12 15:30:40'),
(10, 'EG02', 'Calvin Klein Eyeglass', 'Prescription Eyeglasses', 'Frame Shape: Round\r\nFrame Material: Metal\r\nFrame Type: Full Rim, Progressive Eligible', 600, 3, 'Calvin Klein CK5460 is a Full Rim, Progressive Eligible frame for Men and Women, which is made of Metal.', 'Most metal frames are made out of Monel. Monel has a copper and nickel base. This metal can be corrosion resistant, strong, and easily adjusted. It retains its stability and shape.', 'This model features a Round shape, with a Single Bridge.', 'This model has silicone nose pads for comfort and easy adjustments.', 'Calvin Klein CK5460 Eyeglasses come with a cleaning cloth and protective carrying case.', 'This product is made in China.', 'mc_p_thumb_12-Oct-2021_09-06-58.png', 'mc_p_img1_12-Oct-2021_09-06-58.png', 'mc_p_img2_12-Oct-2021_09-06-58.png', 'mc_p_img3_12-Oct-2021_09-06-58.png', 2, 5, 8, '2021-10-12 15:06:58', '2021-10-12 15:06:58'),
(11, 'EG03', 'CHANEL ROUND EYEGLASSES', 'Metal & Sequins Black.', 'Round  eyeglasses with metal finishing', 359, 6, 'Detail 1', 'Detail 2', 'Detail 3', 'Detail 4', 'Detail 5', 'Detail 6 ', 'mc_p_thumb_12-Oct-2021_09-41-39.jpg', 'mc_p_img1_12-Oct-2021_09-41-39.jpg', 'mc_p_img2_12-Oct-2021_09-41-39.jpg', 'mc_p_img3_12-Oct-2021_09-41-39.jpg', 2, 5, 1, '2021-10-12 15:41:39', '2021-10-12 15:41:39'),
(12, 'SG01', 'VERSACE GRECA SUNGLASSES', 'Greca Sunglasses', 'Seen on the runway, these rectangular sunglasses are the ultimate glamorous accessory. The new design boasts wide temples enriched with geometric Greca hardware in a glossy, golden finish. This style features a black frame and temples paired with sleek da', 1590, 2, 'Rectangular shape', 'Details: Gold-tone Greca hardware on the wide temples', 'Can be adapted for some prescription lenses', 'Frame: 100% Acetate', 'Temples: 100% Nylon fibre', 'Made in Italy', 'mc_p_thumb_12-Oct-2021_09-35-23.png', 'mc_p_img1_12-Oct-2021_09-35-23.png', 'mc_p_img2_12-Oct-2021_09-35-23.png', 'mc_p_img3_12-Oct-2021_09-35-23.png', 2, 4, 4, '2021-10-12 15:35:23', '2021-10-12 15:35:23'),
(13, 'SG02', 'MONOGRAM SQUARE SUNGLASSES', 'Louis Vuition Sunglasses', 'The classic silhouette evokes timeless glamour that is further enhanced by the elegant thick-set arms and rims. Iconic House symbols including tiny Monogram Flowers and LV Initials decorate the temples and the temple tips for a signature finish.', 950, 8, 'Black acetate frame', 'Gold-color hardware', 'Black lenses', 'Monogram Flowers on temples and temple tips', 'Transmittance :27%', 'UV Protection :100%', 'mc_p_thumb_12-Oct-2021_09-14-51.png', 'mc_p_img1_12-Oct-2021_09-14-51.png', 'mc_p_img2_12-Oct-2021_09-14-51.png', 'mc_p_img3_12-Oct-2021_09-14-51.png', 2, 4, 5, '2021-10-12 15:14:51', '2021-10-12 15:14:51'),
(14, 'SG03', 'ROUND SUNGLASSES CK', 'Sunglasses by Calvin Klein Jeans', '• CKJ21628S\r\n• frame material: metal\r\n• calibre: 53 mm', 465, 8, 'Blue, Petrol & Rose colourway: lens category 2, medium level of sun glare reduction and good UV protection', 'Grey colourway: lens category 3, high level of sun glare reduction and high level of UV protection', 'UV protection: UVA/UVB', 'Sunglasses come with a protective carrying case', 'Detail 5', 'Detail 6', 'mc_p_thumb_12-Oct-2021_09-00-48.png', 'mc_p_img1_12-Oct-2021_09-00-48.png', 'mc_p_img2_12-Oct-2021_09-00-48.png', 'mc_p_img3_12-Oct-2021_09-00-48.png', 2, 4, 8, '2021-10-12 15:00:49', '2021-10-12 15:00:49');

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
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
