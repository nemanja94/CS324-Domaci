-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2018 at 09:09 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CS324`
--
CREATE DATABASE IF NOT EXISTS `CS324` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `CS324`;

-- --------------------------------------------------------

--
-- Table structure for table `Persons`
--

DROP TABLE IF EXISTS `Persons`;
CREATE TABLE IF NOT EXISTS `Persons` (
  `persons_id` int(11) NOT NULL AUTO_INCREMENT,
  `persons_name` varchar(64) NOT NULL,
  `persons_lastname` varchar(64) NOT NULL,
  `persons_age` int(11) NOT NULL,
  PRIMARY KEY (`persons_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Persons`
--

INSERT INTO `Persons` (`persons_id`, `persons_name`, `persons_lastname`, `persons_age`) VALUES
(1, 'Zarko', 'Zarkovic', 20),
(2, 'Marko', 'Markovic', 22),
(3, 'Darko', 'Darkovic', 24),
(4, 'Nemanja', 'Andric', 24),
(5, 'Sara', 'Davidovic', 24),
(6, 'Milica', 'Milic', 30);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
