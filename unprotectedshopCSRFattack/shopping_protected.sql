-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 09:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_protected`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Furniture', 'test', '2017-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2017-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '1', 1, '2019-09-17 07:40:56', 'COD', NULL),
(8, 4, '3', 1, '2019-09-17 07:44:08', 'Internet Banking', NULL),
(9, 4, '5', 1, '2019-09-17 07:44:08', 'Internet Banking', NULL),
(10, 4, '2', 1, '2019-09-17 08:33:03', 'Internet Banking', NULL),
(11, 4, '15', 1, '2019-09-17 08:33:03', 'Internet Banking', NULL),
(12, 4, '2', 1, '2019-09-17 13:11:33', 'Internet Banking', NULL),
(13, 4, '17', 1, '2019-09-17 13:30:02', 'Debit / Credit card', NULL),
(14, 4, '3', 1, '2019-09-17 13:30:34', 'Internet Banking', NULL),
(15, 4, '2', 1, '2019-09-21 12:45:37', 'Internet Banking', NULL),
(16, 4, '4', 1, '2019-09-21 12:45:37', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET cp1256 DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET cp1256 DEFAULT NULL,
  `review` longtext CHARACTER SET cp1256 DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 11, 2, 1, 4, 'Cosmin', 'well', 'Good enought', '2019-09-17 07:58:49'),
(6, 11, 2, 1, 4, 'Cosmin', 'well', 'Good enought', '2019-09-17 08:01:49'),
(7, 5, 1, 2, 3, 'Carmina', 'well', '<script>alert(\"hi\")</script>', '2019-09-17 13:20:42'),
(8, 5, 0, 0, 0, 'Carmina', '<script>alert(\"hi\")</script>', 'well enought', '2019-09-17 13:21:27'),
(9, 1, 0, 0, 0, 'Carmina', '<script>alert(\"XSS\")</script>', '<script>alert(\"XSSreview\")</script>', '2019-09-17 15:14:05'),
(10, 1, 0, 0, 0, 'Carmina', '<script>alert(\"XSS\")</script>', '<script>alert(\"XSSreview\")</script>', '2019-09-17 15:14:34'),
(11, 17, 0, 0, 0, 'Dorin', 'well', 'well', '2019-09-17 15:54:36'),
(12, 17, 0, 0, 0, 'Cosmin', '<script>alert(\"XSS\")</script>', '<script>alert(\"XSS\")</script>', '2019-09-17 16:00:41'),
(13, NULL, NULL, NULL, NULL, 'Cosmin', 'let\'s see ', 'let\'s see <script>alert(\"XSS\")</script>', '2019-09-17 16:40:37'),
(14, NULL, NULL, NULL, NULL, 'Cosmin', 'let\'s see ', 'let\'s see <script>alert(\"XSS\")</script>', '2019-09-17 16:41:33'),
(15, NULL, NULL, NULL, NULL, 'Cosmin', 'let', '<script>alert(\"XSS\")</script>', '2019-09-17 16:41:49'),
(16, NULL, NULL, NULL, NULL, 'Cosmin', 'let', '<script>alert(\"XSS\")</script>', '2019-09-17 16:46:34'),
(17, NULL, NULL, NULL, NULL, 'hydg', 'sdhthfsdfzgd', 'hsfdhyjdgjdg', '2019-09-17 17:29:03'),
(18, NULL, NULL, NULL, NULL, 'ydsdh', 'zffghfsmnxh', '<script>alert(\"XSS\")</script>', '2019-09-17 17:29:19'),
(19, 3, 1, 2, 1, 'Cosmin', 'well', '<script>alert(\"XSS\")</script>', '2019-09-17 17:43:19'),
(20, 3, 1, 2, 1, 'Cosmin', 'well', '<script>alert(\"XSS\")</script>', '2019-09-17 17:54:28'),
(21, 3, 3, 3, 3, 'Cosmin', 'this ', '<script>alert(\"csrf\")</script>', '2019-09-17 17:55:08'),
(22, 3, 3, 3, 3, 'Cosmin', 'this ', '<script>alert(\"csrf\")</script>', '2019-09-17 18:00:56'),
(23, 2, 2, 3, 3, 'Dorin', 'well', 'code', '2019-09-18 03:00:48'),
(24, 17, 0, 0, 0, 'Cosmin', 'well', '<script>alert(\"Xss\")</script>', '2019-10-30 02:23:20'),
(25, 17, 0, 0, 0, 'Cosmin', 'well', 'code', '2019-10-30 02:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 20:19:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'cosminsilviu', 0x3a3a3100000000000000000000000000, '2019-09-16 09:17:23', '16-09-2019 02:47:41 PM', 1),
(25, 'cosmin \" or \" 1 \" = \" 1', 0x3a3a3100000000000000000000000000, '2019-09-16 09:18:22', NULL, 0),
(26, '\" or \"\"=\"', 0x3a3a3100000000000000000000000000, '2019-09-16 09:20:42', NULL, 0),
(27, 'text', 0x3a3a3100000000000000000000000000, '2019-09-16 09:22:36', '16-09-2019 02:52:42 PM', 1),
(28, '\" or \"\"=\"', 0x3a3a3100000000000000000000000000, '2019-09-16 09:23:06', '16-09-2019 02:53:11 PM', 1),
(29, 'gtgyg', 0x3a3a3100000000000000000000000000, '2019-09-16 09:31:27', '16-09-2019 03:02:16 PM', 1),
(30, '1', 0x3a3a3100000000000000000000000000, '2019-09-16 10:00:07', '16-09-2019 03:30:16 PM', 1),
(31, 'dhjrujruj', 0x3a3a3100000000000000000000000000, '2019-09-16 10:00:27', NULL, 0),
(32, '1', 0x3a3a3100000000000000000000000000, '2019-09-16 10:00:35', '16-09-2019 03:32:25 PM', 1),
(33, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-09-16 10:02:38', NULL, 0),
(34, '1', 0x3a3a3100000000000000000000000000, '2019-09-16 10:03:03', '16-09-2019 03:36:15 PM', 1),
(35, '1', 0x3a3a3100000000000000000000000000, '2019-09-16 10:06:30', NULL, 0),
(36, '1', 0x3a3a3100000000000000000000000000, '2019-09-16 10:07:52', '16-09-2019 03:47:36 PM', 1),
(37, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-16 10:20:31', '16-09-2019 03:50:34 PM', 1),
(38, 'car', 0x3a3a3100000000000000000000000000, '2019-09-16 12:52:22', NULL, 0),
(39, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-16 12:52:32', '17-09-2019 07:39:06 AM', 1),
(40, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-17 03:07:02', '17-09-2019 08:40:47 AM', 1),
(41, '1', 0x3a3a3100000000000000000000000000, '2019-09-17 03:11:06', '17-09-2019 08:43:46 AM', 1),
(42, '1', 0x3a3a3100000000000000000000000000, '2019-09-17 06:17:39', '17-09-2019 12:01:41 PM', 1),
(43, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-17 07:40:47', '17-09-2019 02:35:32 PM', 1),
(44, '1', 0x3a3a3100000000000000000000000000, '2019-09-17 09:21:42', '17-09-2019 06:03:37 PM', 1),
(45, '1', 0x3a3a3100000000000000000000000000, '2019-09-17 12:50:41', '17-09-2019 06:21:39 PM', 1),
(46, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-17 12:51:55', '17-09-2019 08:11:15 PM', 1),
(47, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-17 15:04:47', NULL, 1),
(48, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:38:25', '18-09-2019 11:12:44 AM', 1),
(49, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:42:59', '18-09-2019 11:13:04 AM', 1),
(50, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:43:25', '18-09-2019 11:25:12 AM', 1),
(51, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:55:31', '18-09-2019 11:25:36 AM', 1),
(52, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:55:53', NULL, 0),
(53, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:56:12', NULL, 0),
(54, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:56:22', NULL, 0),
(55, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:56:31', '18-09-2019 11:26:34 AM', 1),
(56, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 05:56:48', '18-09-2019 12:43:07 PM', 1),
(57, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-18 07:13:28', '18-09-2019 12:44:36 PM', 1),
(58, '1', 0x3a3a3100000000000000000000000000, '2019-09-18 07:14:57', NULL, 1),
(59, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-21 12:44:25', '21-09-2019 06:16:41 PM', 1),
(60, '1', 0x3a3a3100000000000000000000000000, '2019-09-21 12:56:51', '21-09-2019 06:29:06 PM', 1),
(61, '1', 0x3a3a3100000000000000000000000000, '2019-09-21 13:02:53', '21-09-2019 06:35:08 PM', 1),
(62, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-21 13:05:21', '21-09-2019 06:37:47 PM', 1),
(63, '1', 0x3a3a3100000000000000000000000000, '2019-09-21 13:08:01', '21-09-2019 06:38:32 PM', 1),
(64, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-21 13:08:42', '21-09-2019 06:40:40 PM', 1),
(65, '1', 0x3a3a3100000000000000000000000000, '2019-09-21 13:10:54', '21-09-2019 06:47:58 PM', 1),
(66, '1', 0x3a3a3100000000000000000000000000, '2019-09-21 13:18:13', '21-09-2019 06:50:20 PM', 1),
(67, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-21 13:20:31', '21-09-2019 07:01:42 PM', 1),
(68, '', 0x3a3a3100000000000000000000000000, '2019-09-21 13:34:48', '14-11-2019 08:24:31 AM', 0),
(69, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-09-21 13:35:01', NULL, 1),
(70, '1', 0x3a3a3100000000000000000000000000, '2019-10-30 02:04:21', '31-10-2019 08:43:40 AM', 1),
(71, '1', 0x3a3a3100000000000000000000000000, '2019-10-31 04:14:37', '31-10-2019 09:44:43 AM', 1),
(72, '1', 0x3a3a3100000000000000000000000000, '2019-10-31 04:18:06', NULL, 0),
(73, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-31 04:19:41', NULL, 0),
(74, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-10-31 04:21:02', NULL, 0),
(75, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-10-31 04:23:05', NULL, 0),
(76, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-31 04:23:30', NULL, 0),
(77, 'ioan@email.com', 0x3a3a3100000000000000000000000000, '2019-10-31 04:26:24', NULL, 0),
(78, 'carmina26@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-31 04:28:18', '31-10-2019 09:58:31 AM', 1),
(79, 'cosminsilviu24@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-31 04:31:44', NULL, 0),
(80, '1', 0x3a3a3100000000000000000000000000, '2019-11-01 15:10:55', NULL, 0),
(81, '1', 0x3a3a3100000000000000000000000000, '2019-11-01 15:21:09', '02-11-2019 05:34:47 AM', 1),
(82, '1', 0x3a3a3100000000000000000000000000, '2019-11-02 00:20:15', '02-11-2019 05:50:47 AM', 1),
(83, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 00:22:04', '02-11-2019 05:53:08 AM', 1),
(84, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 00:23:25', NULL, 0),
(85, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 00:23:38', '02-11-2019 05:56:14 AM', 1),
(86, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 00:26:27', '02-11-2019 06:09:36 AM', 1),
(87, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 00:40:19', NULL, 0),
(88, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 00:40:32', '02-11-2019 06:26:52 AM', 1),
(89, '1', 0x3a3a3100000000000000000000000000, '2019-11-02 00:57:06', '02-11-2019 06:38:25 AM', 1),
(90, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 01:08:40', NULL, 1),
(91, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 01:11:41', '02-11-2019 07:05:58 AM', 1),
(92, '1', 0x3a3a3100000000000000000000000000, '2019-11-02 01:36:11', '02-11-2019 07:06:15 AM', 1),
(93, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-02 01:36:30', '03-11-2019 06:43:29 PM', 1),
(94, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-03 13:22:08', '03-11-2019 06:53:05 PM', 1),
(95, '1', 0x3a3a3100000000000000000000000000, '2019-11-03 13:26:14', '03-11-2019 07:06:12 PM', 1),
(96, 'dorin@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-03 13:55:27', '04-11-2019 07:34:22 AM', 1),
(97, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-04 02:04:33', '04-11-2019 07:41:33 AM', 1),
(98, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-04 02:11:52', '04-11-2019 07:56:06 AM', 1),
(99, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-04 02:26:20', NULL, 1),
(100, 'carmina26', 0x3a3a3100000000000000000000000000, '2019-11-04 02:55:53', NULL, 1),
(101, '1', 0x3a3a3100000000000000000000000000, '2019-11-14 00:43:56', '14-11-2019 06:17:53 AM', 1),
(102, '1', 0x3a3a3100000000000000000000000000, '2019-11-14 00:51:06', '14-11-2019 06:21:09 AM', 1),
(103, 'galaxie', 0x3a3a3100000000000000000000000000, '2019-11-14 02:07:54', '14-11-2019 07:51:56 AM', 1),
(104, '1', 0x3a3a3100000000000000000000000000, '2019-11-14 02:22:09', '14-11-2019 07:53:57 AM', 1),
(105, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-14 02:25:29', '14-11-2019 07:57:01 AM', 1),
(106, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-14 02:27:58', '14-11-2019 08:23:45 AM', 1),
(107, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-14 03:02:57', NULL, 0),
(108, '1', 0x3a3a3100000000000000000000000000, '2019-11-14 03:03:06', NULL, 0),
(109, '1', 0x3a3a3100000000000000000000000000, '2019-11-14 03:04:02', NULL, 0),
(110, '1', 0x3a3a3100000000000000000000000000, '2019-11-20 15:48:10', NULL, 0),
(111, 'galaxie', 0x3a3a3100000000000000000000000000, '2019-11-20 15:48:46', NULL, 0),
(112, '1', 0x3a3a3100000000000000000000000000, '2019-11-20 15:51:24', NULL, 0),
(113, '', 0x3a3a3100000000000000000000000000, '2019-11-20 15:51:34', '05-02-2020 12:37:57 AM', 0),
(114, '1', 0x3a3a3100000000000000000000000000, '2019-11-20 15:55:19', '22-11-2019 08:51:25 AM', 1),
(115, 'cosmin@25', 0x3a3a3100000000000000000000000000, '2019-11-22 03:23:06', '22-11-2019 08:53:40 AM', 1),
(116, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-22 03:26:22', NULL, 0),
(117, 'cosmin@25', 0x3a3a3100000000000000000000000000, '2019-11-22 03:26:37', '27-11-2019 08:05:44 AM', 1),
(118, 'ioana17', 0x3a3a3100000000000000000000000000, '2019-11-27 02:37:31', '27-11-2019 08:10:10 AM', 1),
(119, 'vasile67', 0x3a3a3100000000000000000000000000, '2019-11-27 02:50:31', '27-11-2019 08:21:50 AM', 1),
(120, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-27 02:52:28', NULL, 1),
(121, '1', 0x3a3a3100000000000000000000000000, '2019-11-27 03:00:56', '27-11-2019 08:32:07 AM', 1),
(122, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-27 03:02:28', NULL, 1),
(123, '1', 0x3a3a3100000000000000000000000000, '2019-11-27 03:06:04', NULL, 1),
(124, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-27 03:06:49', '27-11-2019 08:48:24 AM', 1),
(125, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-27 03:19:28', '27-11-2019 08:49:38 AM', 1),
(126, 'carmina', 0x3a3a3100000000000000000000000000, '2019-11-27 03:20:08', '27-11-2019 08:50:42 AM', 1),
(127, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-11-27 03:20:55', '01-12-2019 10:21:52 PM', 1),
(128, 'carmina', 0x3a3a3100000000000000000000000000, '2019-12-01 16:54:17', '01-12-2019 10:26:05 PM', 1),
(129, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-12-01 16:56:17', '01-12-2019 10:28:49 PM', 1),
(130, 'carmina', 0x3a3a3100000000000000000000000000, '2019-12-01 16:59:04', NULL, 1),
(131, 'cosmin', 0x3a3a3100000000000000000000000000, '2019-12-01 17:00:36', NULL, 1),
(132, '1', 0x3a3a3100000000000000000000000000, '2020-02-04 19:07:53', '05-02-2020 12:37:57 AM', 1),
(133, '1', 0x3a3a3100000000000000000000000000, '2020-02-04 19:08:27', '05-02-2020 01:07:23 AM', 1),
(134, 'carmina', 0x3a3a3100000000000000000000000000, '2020-02-04 19:38:04', NULL, 1),
(135, '1', 0x3a3a3100000000000000000000000000, '2020-02-08 05:29:12', '08-02-2020 11:00:12 AM', 1),
(136, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 05:31:14', NULL, 0),
(137, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 05:32:01', NULL, 0),
(138, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-02-08 05:33:42', '08-02-2020 11:12:47 AM', 1),
(139, '1', 0x3a3a3100000000000000000000000000, '2020-02-08 05:44:52', NULL, 1),
(140, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:24:10', '03-03-2020 07:54:14 AM', 1),
(141, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:35:24', NULL, 0),
(142, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:43:14', '03-03-2020 08:14:02 AM', 1),
(143, 'cosmin@gmail.com; DELETE FROM users WHERE id > 10;', 0x3a3a3100000000000000000000000000, '2020-03-03 02:45:15', NULL, 0),
(144, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:45:20', '03-03-2020 08:18:43 AM', 1),
(145, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:48:55', NULL, 0),
(146, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:50:22', '03-03-2020 08:22:18 AM', 1),
(147, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:52:39', NULL, 0),
(148, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:52:52', NULL, 0),
(149, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 02:53:28', '03-03-2020 08:23:35 AM', 1),
(150, 'cosmin@gmail.com; DELETE FROM users WHERE id > 10;', 0x3a3a3100000000000000000000000000, '2020-03-03 02:54:20', NULL, 0),
(151, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 02:55:12', '03-03-2020 08:25:24 AM', 1),
(152, 'cosmin@gmail.com; DELETE FROM `users` WHERE `users`.`id` > 10;', 0x3a3a3100000000000000000000000000, '2020-03-03 02:58:08', NULL, 0),
(153, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 03:20:38', '03-03-2020 08:50:50 AM', 1),
(154, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:20:59', '03-03-2020 08:51:17 AM', 1),
(155, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:29:20', NULL, 0),
(156, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:30:12', NULL, 1),
(157, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:30:36', NULL, 1),
(158, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:35:16', NULL, 0),
(159, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:36:32', NULL, 1),
(160, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:36:54', NULL, 0),
(161, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:38:41', NULL, 0),
(162, '', 0x3a3a3100000000000000000000000000, '2020-03-03 03:38:57', '11-05-2020 09:18:40 AM', 1),
(163, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 03:39:56', '03-03-2020 09:10:05 AM', 1),
(164, 'carmina26', 0x3a3a3100000000000000000000000000, '2020-03-03 03:43:01', NULL, 0),
(165, 'dorin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:43:43', NULL, 0),
(166, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:44:37', NULL, 0),
(167, 'ioana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:46:12', NULL, 0),
(168, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:46:20', NULL, 0),
(169, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:46:57', NULL, 0),
(170, 'carmina', 0x3a3a3100000000000000000000000000, '2020-03-03 03:47:19', NULL, 0),
(171, '1', 0x3a3a3100000000000000000000000000, '2020-03-03 03:47:30', NULL, 0),
(172, 'hatnean@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:51:13', NULL, 0),
(173, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 03:51:32', NULL, 0),
(174, 'carmina26', 0x3a3a3100000000000000000000000000, '2020-03-03 18:59:35', NULL, 0),
(175, 'hatnean@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 19:00:45', NULL, 0),
(176, 'cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-03 19:01:03', NULL, 0),
(177, '1', 0x3a3a3100000000000000000000000000, '2020-03-29 15:07:59', NULL, 0),
(178, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:34:29', NULL, 0),
(179, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:38:05', '09-05-2020 06:08:14 PM', 1),
(180, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:38:33', NULL, 0),
(181, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 12:40:05', NULL, 1),
(182, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:40:38', '09-05-2020 06:12:00 PM', 0),
(183, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:42:22', NULL, 0),
(184, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:42:53', NULL, 0),
(185, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:46:39', '09-05-2020 06:16:43 PM', 1),
(186, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 12:47:00', '09-05-2020 06:17:03 PM', 1),
(187, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 12:50:43', '09-05-2020 06:20:46 PM', 1),
(188, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 12:50:57', '09-05-2020 06:21:01 PM', 1),
(189, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 12:52:37', '09-05-2020 06:27:01 PM', 1),
(190, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 12:57:14', '09-05-2020 06:27:30 PM', 1),
(191, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 12:58:34', '09-05-2020 06:31:11 PM', 1),
(192, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 13:01:23', '09-05-2020 06:35:13 PM', 0),
(193, 'morar.george@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:07:15', NULL, 0),
(194, 'loghin.elena@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:10:09', '09-05-2020 06:44:05 PM', 1),
(195, 'morar.george@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:16:53', NULL, 0),
(196, 'pascanut.gabriel', 0x3a3a3100000000000000000000000000, '2020-05-09 13:21:36', NULL, 0),
(197, 'p', 0x3a3a3100000000000000000000000000, '2020-05-09 13:22:09', NULL, 0),
(198, 'pascanut.gabriel', 0x3a3a3100000000000000000000000000, '2020-05-09 13:22:20', NULL, 0),
(199, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:25:13', '09-05-2020 06:58:39 PM', 1),
(200, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:29:10', '09-05-2020 07:03:09 PM', 1),
(201, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:36:07', NULL, 0),
(202, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:36:24', '09-05-2020 07:06:29 PM', 1),
(203, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:36:44', '09-05-2020 07:07:43 PM', 1),
(204, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 13:37:58', '09-05-2020 07:57:35 PM', 1),
(205, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 14:27:56', NULL, 0),
(206, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 14:28:33', '09-05-2020 08:01:18 PM', 1),
(207, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 14:31:35', NULL, 0),
(208, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 14:54:41', NULL, 1),
(209, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 15:31:30', '09-05-2020 09:06:47 PM', 1),
(210, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 15:38:46', '09-05-2020 09:08:52 PM', 1),
(211, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 15:41:18', '09-05-2020 09:11:25 PM', 1),
(212, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 15:42:24', '09-05-2020 09:12:30 PM', 1),
(213, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 15:42:58', '09-05-2020 09:14:08 PM', 1),
(214, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 15:44:40', NULL, 0),
(215, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 15:48:20', NULL, 0),
(216, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 17:11:25', '09-05-2020 10:41:59 PM', 1),
(217, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 17:35:17', '09-05-2020 11:05:21 PM', 1),
(218, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 17:35:39', NULL, 0),
(219, '1', 0x3a3a3100000000000000000000000000, '2020-05-09 17:36:11', '09-05-2020 11:09:59 PM', 1),
(220, 'anca.croitoru!@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 18:18:24', NULL, 0),
(221, 'anca.croitoru@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 18:18:47', '09-05-2020 11:48:56 PM', 1),
(222, 'anca.croitoru@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 18:19:33', NULL, 0),
(223, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 18:21:31', NULL, 0),
(224, 'diac<>onu>.ana<@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-09 19:02:27', '10-05-2020 08:32:29 PM', 1),
(225, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:02:43', '10-05-2020 08:41:42 PM', 1),
(226, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:12:12', '10-05-2020 08:44:48 PM', 1),
(227, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:14:59', '10-05-2020 08:52:19 PM', 1),
(228, 'hatnean.carmina@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:22:30', '10-05-2020 08:55:52 PM', 1),
(229, 'hatnean.dorin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:26:39', '10-05-2020 08:58:00 PM', 1),
(230, 'hatnean.dorin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:28:14', NULL, 1),
(231, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:30:09', NULL, 0),
(232, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:30:23', '10-05-2020 09:00:38 PM', 1),
(233, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:30:52', '10-05-2020 09:07:32 PM', 1),
(234, 'hatnean.dorin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:37:58', NULL, 1),
(235, 'hatnean.dorin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:38:36', NULL, 1),
(236, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:38:51', NULL, 1),
(237, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:39:56', NULL, 1),
(238, 'morar.george@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:40:46', NULL, 0),
(239, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:41:07', NULL, 0),
(240, 'pascanut.gabriel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 15:41:21', NULL, 0),
(241, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 16:15:04', NULL, 1),
(242, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 16:17:01', '10-05-2020 09:47:54 PM', 1),
(243, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 16:18:10', '10-05-2020 09:52:18 PM', 1),
(244, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-10 16:24:24', '11-05-2020 09:06:07 AM', 1),
(245, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:36:21', '11-05-2020 09:06:48 AM', 1),
(246, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:37:06', '11-05-2020 09:09:12 AM', 1),
(247, 'po', 0x3a3a3100000000000000000000000000, '2020-05-11 03:39:20', NULL, 0),
(248, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:39:32', '11-05-2020 09:09:50 AM', 1),
(249, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:40:02', '11-05-2020 09:11:04 AM', 1),
(250, 'popescu.daniel@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:41:19', NULL, 1),
(251, 'dorneanu.ioana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:49:11', '11-05-2020 09:19:41 AM', 1),
(252, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:50:01', NULL, 1),
(253, 'dorneanu.ioana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:50:48', '11-05-2020 09:22:42 AM', 1),
(254, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:51:27', NULL, 1),
(255, 'dorneanu.ioana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:53:02', '11-05-2020 09:23:52 AM', 1),
(256, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:54:04', NULL, 1),
(257, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 03:55:43', '11-05-2020 09:28:09 AM', 1),
(258, 'dorneanu.ioana@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 04:10:27', '11-05-2020 09:40:56 AM', 1),
(259, 'puscas.alin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-11 04:11:12', '12-05-2020 10:10:07 PM', 1),
(260, '1', 0x3a3a3100000000000000000000000000, '2020-05-12 16:41:13', '14-05-2020 05:54:33 AM', 1),
(261, '1', 0x3a3a3100000000000000000000000000, '2021-01-23 20:25:43', NULL, 0),
(262, '1', 0x3a3a3100000000000000000000000000, '2021-01-23 21:02:10', NULL, 0),
(263, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-23 21:02:26', '24-01-2021 02:35:48 AM', 1),
(264, '1', 0x3a3a3100000000000000000000000000, '2021-01-23 21:05:53', '02-02-2021 04:33:56 PM', 0),
(265, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-23 21:06:09', '24-01-2021 02:36:12 AM', 1),
(266, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-25 00:29:59', NULL, 1),
(267, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-25 00:31:25', NULL, 1),
(268, '1', 0x3a3a3100000000000000000000000000, '2021-02-02 11:04:02', NULL, 0),
(269, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-02 11:04:12', '02-02-2021 05:26:03 PM', 1),
(270, 'hatnean.cosmin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-02 11:56:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(38, 'Popescu ', 'popescu.daniel@gmail.com', 9046358888, 'aa47f8215c6f30a0dcdb2a36a9f4168e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 20:58:03', NULL),
(39, 'Dorneanu', 'dorneanu.ioana@gmail.com', 8025265847, '032663518fde7671a2a54a687daa04a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 20:59:20', NULL),
(40, 'Hatnean Carmina', 'hatnean.carmina@gmail.com', 7235892357, '2fde1f72d0cd367122870bf520210b1b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 21:00:22', NULL),
(41, 'Hatnean Cosmin', 'hatnean.cosmin@gmail.com', 7462924295, '5fa72358f0b4fb4f2c5d7de8c9a41846', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-23 21:01:17', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
