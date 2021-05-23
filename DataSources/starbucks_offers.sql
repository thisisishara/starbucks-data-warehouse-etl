-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 02, 2021 at 03:29 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starbucks_offers`
--

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
CREATE TABLE IF NOT EXISTS `offer` (
  `offer_id` varchar(50) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `difficulty` tinyint(4) NOT NULL,
  `duration` tinyint(4) NOT NULL,
  `offer_type_id` varchar(6) NOT NULL,
  `channel_id` varchar(6) NOT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`offer_id`, `reward`, `difficulty`, `duration`, `offer_type_id`, `channel_id`) VALUES
('0b1e1539f2cc45b7b9fa7c272da2e1d7', 5, 20, 10, 'OFF001', 'CH0005'),
('2298d6c36e964ae4a3e7e9706d1fb8c2', 3, 7, 7, 'OFF001', 'CH0015'),
('2906b810c7d4411798c6938adc9daaa5', 2, 10, 7, 'OFF001', 'CH0011'),
('3f207df678b143eea3cee63160fa8bed', 0, 0, 4, 'OFF002', 'CH0011'),
('4d5c57ea9a6940dd891ad53e9dbe8da0', 10, 10, 5, 'OFF003', 'CH0015'),
('5a8bc65990b245e5a138643cd4eb9837', 0, 0, 3, 'OFF002', 'CH0014'),
('9b98b8c7a33c4b65b9aebfe6a799e6d9', 5, 5, 7, 'OFF003', 'CH0011'),
('ae264e3637204a6fb9bb56bc8210ddfd', 10, 10, 7, 'OFF003', 'CH0014'),
('f19421c1d4aa40978ebb69ca19b0e20d', 5, 5, 5, 'OFF003', 'CH0015'),
('fafdcd668e3743c1bb461111dcafc2a4', 2, 10, 10, 'OFF001', 'CH0015');

-- --------------------------------------------------------

--
-- Table structure for table `offer_type`
--

DROP TABLE IF EXISTS `offer_type`;
CREATE TABLE IF NOT EXISTS `offer_type` (
  `type_id` varchar(6) NOT NULL,
  `type_name` varchar(15) NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_type`
--

INSERT INTO `offer_type` (`type_id`, `type_name`) VALUES
('OFF003', 'bogo'),
('OFF001', 'discount'),
('OFF002', 'informational');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
