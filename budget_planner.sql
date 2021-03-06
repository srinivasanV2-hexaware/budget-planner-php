-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 12:00 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budget_planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `budg_id` int(11) NOT NULL,
  `budg_period_from` date NOT NULL,
  `budg_period_to` date DEFAULT NULL,
  `income` float NOT NULL,
  `other_income` float DEFAULT NULL,
  `edu_id` int(11) DEFAULT NULL,
  `hous_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `sav_id` int(11) DEFAULT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`budg_id`, `budg_period_from`, `budg_period_to`, `income`, `other_income`, `edu_id`, `hous_id`, `person_id`, `sav_id`, `trans_id`, `created_at`, `modified_at`) VALUES
(13, '2019-05-19', NULL, 26002, 25200, 11, 7, 11, 13, 12, '2019-05-19 12:57:57', '2019-05-19 12:57:57'),
(14, '2019-05-19', NULL, 30000, 2055220, 12, 8, 12, 14, 13, '2019-05-19 15:22:51', '2019-05-19 15:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `edu_id` int(11) NOT NULL,
  `school_supp` float DEFAULT NULL,
  `stud_loans` float DEFAULT NULL,
  `colleg_tution` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`edu_id`, `school_supp`, `stud_loans`, `colleg_tution`, `created_at`, `modified_at`) VALUES
(7, 10, 10, 10, NULL, NULL),
(8, 100, 100, 100, '2019-05-18 09:49:45', '2019-05-18 09:49:45'),
(9, 10, 10, 10, '2019-05-18 09:52:47', '2019-05-18 09:52:47'),
(10, 100, 100, 100, '2019-05-19 12:49:29', '2019-05-19 12:49:29'),
(11, 103, 100, 100, '2019-05-19 12:57:57', '2019-05-19 12:57:57'),
(12, 55555, 55555, 55555, '2019-05-19 15:22:51', '2019-05-19 15:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `housing`
--

CREATE TABLE `housing` (
  `house_id` int(11) NOT NULL,
  `mortgage` float DEFAULT NULL,
  `hoa` float DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `homeins` float DEFAULT NULL,
  `repair_main` float DEFAULT NULL,
  `watgasele` float DEFAULT NULL,
  `cabtvinternet` float DEFAULT NULL,
  `phonecell` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housing`
--

INSERT INTO `housing` (`house_id`, `mortgage`, `hoa`, `rent`, `homeins`, `repair_main`, `watgasele`, `cabtvinternet`, `phonecell`, `created_at`, `modified_at`) VALUES
(3, 200, 200, 200, 200, 200, 200, 200, 200, '2019-05-18 09:45:37', '2019-05-18 09:45:37'),
(4, 100, 100, 100, 100, 100, 100, 100, 100, '2019-05-18 09:49:45', '2019-05-18 09:49:45'),
(5, 100, 100, 100, 100, 100, 100, 100, 100, '2019-05-18 09:52:47', '2019-05-18 09:52:47'),
(6, 100, 100, 100, 100, 100, 100, 100, 100, '2019-05-19 12:49:29', '2019-05-19 12:49:29'),
(7, 122, 100, 11, 100, 100, 101, 100, 100, '2019-05-19 12:57:57', '2019-05-19 12:57:57'),
(8, 125, 222, 225, 558, 2555, 552, 552, 5225, '2019-05-19 15:22:51', '2019-05-19 15:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `pers_id` int(11) NOT NULL,
  `groc_hous` float DEFAULT NULL,
  `clothing` float DEFAULT NULL,
  `entert` float DEFAULT NULL,
  `medical` float DEFAULT NULL,
  `pet_supp` float DEFAULT NULL,
  `other_exp` float DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`pers_id`, `groc_hous`, `clothing`, `entert`, `medical`, `pet_supp`, `other_exp`, `create_at`, `modified_at`) VALUES
(7, 100, 10, 10, 10, 10, 10, '2019-05-18 09:45:37', '2019-05-18 09:45:37'),
(8, 100, 100, 100, 100, 100, 100, '2019-05-18 09:49:44', '2019-05-18 09:49:44'),
(9, 100, 10, 10, 10, 10, 10, '2019-05-18 09:52:47', '2019-05-18 09:52:47'),
(10, 100, 100, 100, 100, 100, 100, '2019-05-19 12:49:29', '2019-05-19 12:49:29'),
(11, 103, 10, 100, 100, 100, 100, '2019-05-19 12:57:57', '2019-05-19 12:57:57'),
(12, 0, 0, 0, 0, 0, 0, '2019-05-19 15:22:51', '2019-05-19 15:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `sav_id` int(11) NOT NULL,
  `emer_fund` float DEFAULT NULL,
  `investment` float DEFAULT NULL,
  `retirement` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`sav_id`, `emer_fund`, `investment`, `retirement`, `created_at`, `modified_at`) VALUES
(9, 17, 10, 30, '2019-05-18 09:45:37', '2019-05-18 09:45:37'),
(10, 100, 100, 100, '2019-05-18 09:49:44', '2019-05-18 09:49:44'),
(11, 100, 100, 100, '2019-05-18 09:52:47', '2019-05-18 09:52:47'),
(12, 100, 100, 100, '2019-05-19 12:49:29', '2019-05-19 12:49:29'),
(13, 128, 100, 100, '2019-05-19 12:57:57', '2019-05-19 12:57:57'),
(14, 0, 0, 0, '2019-05-19 15:22:51', '2019-05-19 15:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `trans_id` int(11) NOT NULL,
  `car_pmt` float DEFAULT NULL,
  `car_insu` float DEFAULT NULL,
  `gas_fuel` float DEFAULT NULL,
  `car_repairs` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`trans_id`, `car_pmt`, `car_insu`, `gas_fuel`, `car_repairs`, `created_at`, `modified_at`) VALUES
(8, 100, 10, 10, 10, '2019-05-18 09:45:36', '2019-05-18 09:45:36'),
(9, 132, 10, 10, 10, '2019-05-18 09:49:44', '2019-05-18 09:49:44'),
(10, 172, 10, 10, 10, '2019-05-18 09:52:47', '2019-05-18 09:52:47'),
(11, 100, 100, 100, 100, '2019-05-19 12:49:29', '2019-05-19 12:49:29'),
(12, 127, 100, 100, 10, '2019-05-19 12:57:56', '2019-05-19 12:57:56'),
(13, 6332, 11, 111, 1111, '2019-05-19 15:22:50', '2019-05-19 15:22:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`budg_id`),
  ADD UNIQUE KEY `edu_id` (`edu_id`),
  ADD UNIQUE KEY `hous_id` (`hous_id`),
  ADD UNIQUE KEY `person_id` (`person_id`),
  ADD UNIQUE KEY `sav_id` (`sav_id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `edu_id` (`edu_id`);

--
-- Indexes for table `housing`
--
ALTER TABLE `housing`
  ADD PRIMARY KEY (`house_id`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`pers_id`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`sav_id`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `budg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `housing`
--
ALTER TABLE `housing`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `pers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `sav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transportation`
--
ALTER TABLE `transportation`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`edu_id`) REFERENCES `education` (`edu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `budget_ibfk_5` FOREIGN KEY (`sav_id`) REFERENCES `savings` (`sav_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `budget_ibfk_6` FOREIGN KEY (`trans_id`) REFERENCES `transportation` (`trans_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `budget_ibfk_7` FOREIGN KEY (`person_id`) REFERENCES `personal` (`pers_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `budget_ibfk_8` FOREIGN KEY (`hous_id`) REFERENCES `housing` (`house_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
