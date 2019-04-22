-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 11:44 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petrolpump`
--

-- --------------------------------------------------------

--
-- Table structure for table `nozzels`
--

CREATE TABLE `nozzels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fuelType` varchar(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nozzels`
--

INSERT INTO `nozzels` (`id`, `name`, `fuelType`, `createdAt`, `updatedAt`) VALUES
(2, 'B1', 'diesel', '2018-12-22 03:39:00', '2018-12-22 03:39:00'),
(3, 'B2', 'diesel', '2018-12-22 03:39:00', '2018-12-22 03:39:00'),
(4, 'B3', 'diesel', '2018-12-22 03:39:00', '2018-12-22 03:39:00'),
(5, 'A1', 'petrol', '2018-12-23 03:39:00', '2018-12-22 03:39:00'),
(6, 'A2', 'petrol', '2018-12-23 03:39:00', '2018-12-22 03:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `nozzleId` int(11) DEFAULT NULL,
  `openingReading` int(11) DEFAULT NULL,
  `closingReading` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `nozzleId`, `openingReading`, `closingReading`, `rate`, `createdAt`, `updatedAt`) VALUES
(75, 2, 12347896, 12347900, 58, '2019-04-03', '2019-04-04 00:00:00'),
(76, 3, 2347896, 2347900, 58, '2019-04-03', '2019-04-04 00:00:00'),
(77, 4, 347896, 347900, 58, '2019-04-03', '2019-04-04 00:00:00'),
(78, 5, 234786, 234700, 78, '2018-12-23', '2018-12-23 00:00:00'),
(79, 6, 247896, 2357900, 58, '2018-12-23', '2018-12-23 00:00:00'),
(80, 2, 12347896, 12347900, 58, '2018-12-24', '2018-12-24 00:00:00'),
(81, 3, 2347896, 2347900, 58, '2018-12-24', '2018-12-24 00:00:00'),
(82, 4, 347896, 347900, 58, '2018-12-24', '2018-12-23 00:00:00'),
(83, 5, 234786, 234700, 78, '2018-12-24', '2018-12-24 00:00:00'),
(84, 6, 247896, 2357900, 58, '2018-12-24', '2018-12-24 00:00:00'),
(85, 5, 234786, 234900, 78, '2018-12-25', '2018-12-25 15:21:01'),
(86, 6, 247896, 247900, 58, '2018-12-25', '2018-12-25 15:21:11'),
(87, 2, 12347896, 12348900, 58, '2018-12-25', '2018-12-25 15:21:37'),
(88, 3, 2347896, 2348900, 58, '2018-12-25', '2018-12-25 15:21:47'),
(89, 4, 347896, 347900, 58, '2018-12-25', '2018-12-25 15:24:05'),
(90, 5, 234786, 0, 78, '2018-12-26', '2018-12-26 16:14:28'),
(91, 6, 247896, 0, 58, '2018-12-26', '2018-12-26 16:14:59'),
(92, 5, 234786, 234900, 78, '2018-12-28', '2018-12-25 15:21:01'),
(93, 6, 247896, 247900, 58, '2018-12-28', '2018-12-25 15:21:11'),
(94, 2, 12347896, 12348900, 58, '2018-12-28', '2018-12-25 15:21:37'),
(95, 3, 2347896, 2348900, 58, '2018-12-28', '2018-12-25 15:21:47'),
(96, 4, 347896, 347900, 58, '2018-12-28', '2018-12-25 15:24:05'),
(97, 3, 2347896, 0, 58, '2019-04-04', '2019-04-04 08:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20181222100256-create-nozzels.js'),
('20181224163946-create-records.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nozzels`
--
ALTER TABLE `nozzels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nozzels`
--
ALTER TABLE `nozzels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
