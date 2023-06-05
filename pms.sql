-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 03:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `pms_admin`
--

CREATE TABLE `pms_admin` (
  `doc_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pms_admin`
--

INSERT INTO `pms_admin` (`doc_id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `pms_app`
--

CREATE TABLE `pms_app` (
  `app_id` int(11) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `d_id` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `date` varchar(120) NOT NULL,
  `encoder` varchar(50) NOT NULL,
  `datead` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pms_app`
--

INSERT INTO `pms_app` (`app_id`, `p_id`, `d_id`, `time`, `date`, `encoder`, `datead`) VALUES
(12, 'P14-1404409178', 'D13-1404409232', '08:00:00', '2-02-1988', 'WW', '2014-07-03 19:36:11'),
(13, 'P14-1404411425', 'D13-1404408965', '07:30:00', '3-02-1954', '85221022', '2014-07-03 19:36:49'),
(14, 'P14-1404409178', 'D13-1404412249', '08:00:00', '2-02-1951', 'Somnath', '2014-07-03 19:35:49'),
(15, 'P14-1404409178', 'D13-1404411334', '09:00:00', '3-01-2012', 'Avjit', '2014-07-03 20:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `pms_doctor`
--

CREATE TABLE `pms_doctor` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `status` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL,
  `datead` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pms_doctor`
--

INSERT INTO `pms_doctor` (`id`, `email`, `name`, `age`, `gender`, `status`, `location`, `password`, `datead`) VALUES
(1, 'vvictorrayy@gmail.com', 'Shooman', 18, 'male', 'married', 'Kenya', '', '2023-05-26 11:48:40'),
(2, 'test@test.com', 'Victor', 18, 'male', 'married', 'Kenya', '12345', '2023-05-26 12:10:36'),
(3, 'cs@dkut.com', 'Ray', 22, 'male', 'married', 'Nairobi', '12345', '2023-05-26 12:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `pms_patient`
--

CREATE TABLE `pms_patient` (
  `id` int(50) NOT NULL,
  `email` varchar(65) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `d_id` int(20) NOT NULL,
  `Illness` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `datead` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pms_patient`
--

INSERT INTO `pms_patient` (`id`, `email`, `name`, `age`, `gender`, `status`, `location`, `d_id`, `Illness`, `password`, `datead`) VALUES
(1, 'test@test.com', 'Shooman', 22, 'male', 'married', 'Kenya', 0, 'typhoid', '12345', '2023-05-26 12:00:07'),
(2, 'test@test.com', 'Shooman', 22, 'male', 'married', 'Kenya', 0, 'typhoid', '12345', '2023-05-26 12:00:44'),
(3, 'cs@dkut.com', 'Victor', 22, 'male', 'married', 'Kenya', 0, 'Cholera', '12345', '2023-05-26 12:11:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pms_admin`
--
ALTER TABLE `pms_admin`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `pms_app`
--
ALTER TABLE `pms_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `pms_doctor`
--
ALTER TABLE `pms_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pms_patient`
--
ALTER TABLE `pms_patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pms_admin`
--
ALTER TABLE `pms_admin`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pms_app`
--
ALTER TABLE `pms_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pms_doctor`
--
ALTER TABLE `pms_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pms_patient`
--
ALTER TABLE `pms_patient`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
