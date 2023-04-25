-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 08:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reseve_no` int(3) NOT NULL,
  `reseve_date` date NOT NULL,
  `flight_date` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reseve_no`, `reseve_date`, `flight_date`) VALUES
(1, '2023-03-17', 20230323);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_no` int(3) NOT NULL,
  `price` int(20) NOT NULL,
  `reseve_no` int(3) NOT NULL,
  `traffic_line_no` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_no`, `price`, `reseve_no`, `traffic_line_no`) VALUES
(1, 400, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `traffic_lines`
--

CREATE TABLE `traffic_lines` (
  `traffic_line_no` int(3) NOT NULL,
  `location_departure` varchar(20) NOT NULL,
  `time_departure` varchar(10) NOT NULL,
  `location_arrival` varchar(20) NOT NULL,
  `time_arrival` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traffic_lines`
--

INSERT INTO `traffic_lines` (`traffic_line_no`, `location_departure`, `time_departure`, `location_arrival`, `time_arrival`) VALUES
(1, 'SANA\'A', '08:00 AM', 'AMMAN', '04:00 PM'),
(2, 'AMMAN', '08:00 PM', 'CAIRO', '12:00 PM'),
(3, 'CAIRO', '02:00  PM', 'TRIPOLI', '04:00 PM'),
(4, 'TRIPOLI', '06:00 PM', 'REBAT', '04:00 AM'),
(5, 'SANA\'A', '06:00 PM', 'RIYADH', '09:00 PM'),
(6, 'AMMAN', '12:00 AM', 'ANKRA', '06:00 PM'),
(7, 'ANKRA', '04:00 PM', 'MOSCOW', '12:00 AM'),
(8, 'AMMAN', '05:00 AM', 'TAHRAN', '08:00 AM'),
(9, 'SANA\'A', '10:00 AM', 'MUSCUT', '12:00 PM'),
(10, 'MUSCUT', '12:00 PM', 'NEW DELHI', '05:00 PM'),
(11, 'NEW DELHI', '08:00 AM', 'TOKYO', '03:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `traveller`
--

CREATE TABLE `traveller` (
  `id` int(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nation` varchar(40) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traveller`
--

INSERT INTO `traveller` (`id`, `name`, `nation`, `age`, `email`, `password`) VALUES
(1, 'Om Ali', 'jordan', 67, 'Space@gmail.com', '123ldjfhls'),
(2, 'Abduallah', 'Yemeni', 34, 'Space@gmail.com', 'iytiyt98'),
(3, 'Kamal Zaki', 'Suadiain', 23, 'kamal@gmail.com', '123'),
(4, 'Doa\'a Sameer', 'egyption', 56, 'doaa@gmail.com', '123'),
(18, 'Mohamed Farouk', 'Yemeni', 19, 'Mohammed@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reseve_no`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_no`),
  ADD KEY `reseve_no` (`reseve_no`),
  ADD KEY `traffic_line_no` (`traffic_line_no`);

--
-- Indexes for table `traffic_lines`
--
ALTER TABLE `traffic_lines`
  ADD PRIMARY KEY (`traffic_line_no`);

--
-- Indexes for table `traveller`
--
ALTER TABLE `traveller`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reseve_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `traffic_lines`
--
ALTER TABLE `traffic_lines`
  MODIFY `traffic_line_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `traveller`
--
ALTER TABLE `traveller`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`reseve_no`) REFERENCES `reservation` (`reseve_no`),
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`traffic_line_no`) REFERENCES `traffic_lines` (`traffic_line_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
