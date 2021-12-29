-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 09:30 PM
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
-- Database: `testing`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCountry` (IN `countryId` INT(11))  BEGIN
DELETE FROM tbl_country WHERE country_id = countryId;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCountry` (IN `countryName` VARCHAR(250))  BEGIN
INSERT INTO tbl_country(country_name) VALUES (countryName);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectCountry` ()  BEGIN
SELECT * FROM tbl_country ORDER BY country_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `singleCountry` (IN `countryId` INT(11))  BEGIN
SELECT * FROM tbl_country WHERE country_id = countryId;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCountry` (IN `countryId` INT(11), `countryName` VARCHAR(250))  BEGIN
UPDATE tbl_country SET country_name = countryName WHERE country_id = countryId;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Romania'),
(2, 'UK'),
(3, 'Mexic'),
(4, 'Romania'),
(5, 'SUA'),
(6, 'Israel'),
(7, 'Germania'),
(8, 'Spania'),
(9, 'Romania'),
(10, 'Japonia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
