-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 08:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `gender`, `occupation`, `mobile`, `address`) VALUES
(1, 'Muhammad', 23, 'M', 'Student', 0, 'Islamabad'),
(2, 'Usama Ali', 23, 'Male', 'Student', 0, 'Islamabad'),
(3, 'Usama Ali', 23, 'M', 'Student', 0, 'I8'),
(9, 'Ali', 14, 'M', 'Student', 0, 'Kohat'),
(10, 'Sidra', 23, 'F', 'Student', 0, 'Wah'),
(123, 'Rafeh', 24, 'M', 'Student', 0, 'Pindi');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(10) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `instructions` varchar(50) NOT NULL,
  `doc_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `medicine`, `diagnosis`, `instructions`, `doc_name`) VALUES
(0, 'asd', '', '', 'asd'),
(1, 'Risk', 'Stomach', 'Stop Junks foods.\r\nAlso spicy.', 'Usama'),
(2, 'Panadol', 'Fever', 'Stop Junk Foods', 'Usama'),
(3, 'hh', 'Fever', 'AAAAA', 'asd'),
(9, 'Beflam', 'Pain', '----', 'Usama'),
(10, 'Panadol', 'Fever', 'Stop Junk Foods', 'Usama'),
(123, 'Panadol', 'Fever', 'Dont eat junk', 'Usama');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('aqeel', '54321'),
('rafeh', '12345'),
('sidra', '12345'),
('usama', '1234'),
('usama0', '12345'),
('usama8', '123123123'),
('zahra', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
