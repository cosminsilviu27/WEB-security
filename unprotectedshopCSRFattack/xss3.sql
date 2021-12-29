-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 09:31 PM
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
-- Database: `xss3`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `summary` varchar(200) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `summary`, `comment`) VALUES
(2, 'dsgh', NULL, 'dsfhgfnhf'),
(3, NULL, NULL, 'shsffj'),
(4, NULL, NULL, 'fdgdhd'),
(5, NULL, NULL, 'cosmin'),
(7, NULL, NULL, '<a href=\"http://localhost/dashboard/protectedshopTest/change.php\">Visit W3Schools.com!</a>'),
(8, NULL, NULL, 'fssf'),
(9, NULL, NULL, 'mnbvcs'),
(11, NULL, NULL, '<b onmouseover=alert(\"Wufff!\")>click me!</b>'),
(14, NULL, NULL, '<a href=\"http://localhost/dashboard/unprotectedshop/change.php\">Visit W3Schools.com!</a>'),
(15, NULL, NULL, '<a href=\"http://localhost/dashboard/unprotectedshopCSRFattack/change.php\">Csrf attack!</a>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
