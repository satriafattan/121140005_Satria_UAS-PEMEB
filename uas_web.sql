-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2024 at 07:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `date_submitted` datetime DEFAULT CURRENT_TIMESTAMP,
  `browser` varchar(200) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `name`, `email`, `gender`, `date_submitted`, `browser`, `ip_address`) VALUES
(1, 'John Doe', 'john@example.com', 'Male', '2024-12-23 01:44:22', 'Chrome', '192.168.1.1'),
(2, 'Jane Smith', 'jane@example.com', 'Female', '2024-12-23 01:44:22', 'Firefox', '192.168.1.2'),
(3, 'Alice Brown', 'alice@example.com', 'Female', '2024-12-23 01:44:22', 'Safari', '192.168.1.3'),
(4, 'Bob Johnson', 'bob@example.com', 'Male', '2024-12-23 01:44:22', 'Edge', '192.168.1.4'),
(5, 'Emily Davis', 'emily@example.com', 'Female', '2024-12-23 01:44:22', 'Opera', '192.168.1.5'),
(6, 'Michael Miller', 'michael@example.com', 'Male', '2024-12-23 01:44:22', 'Chrome', '192.168.1.6'),
(7, 'Sarah Wilson', 'sarah@example.com', 'Female', '2024-12-23 01:44:22', 'Firefox', '192.168.1.7'),
(8, 'Daniel Garcia', 'daniel@example.com', 'Male', '2024-12-23 01:44:22', 'Safari', '192.168.1.8'),
(9, 'Sophia Martinez', 'sophia@example.com', 'Female', '2024-12-23 01:44:22', 'Edge', '192.168.1.9'),
(10, 'Matthew Anderson', 'matthew@example.com', 'Male', '2024-12-23 01:44:22', 'Opera', '192.168.1.10'),
(11, 'Laura Thomas', 'laura@example.com', 'Female', '2024-12-23 01:44:22', 'Chrome', '192.168.1.11'),
(12, 'Andrew Lee', 'andrew@example.com', 'Male', '2024-12-23 01:44:22', 'Firefox', '192.168.1.12'),
(13, 'Grace Harris', 'grace@example.com', 'Female', '2024-12-23 01:44:22', 'Safari', '192.168.1.13'),
(14, 'James Clark', 'james@example.com', 'Male', '2024-12-23 01:44:22', 'Edge', '192.168.1.14'),
(15, 'Isabella Lewis', 'isabella@example.com', 'Female', '2024-12-23 01:44:22', 'Opera', '192.168.1.15'),
(16, 'Christopher Walker', 'christopher@example.com', 'Male', '2024-12-23 01:44:22', 'Chrome', '192.168.1.16'),
(17, 'Olivia Robinson', 'olivia@example.com', 'Female', '2024-12-23 01:44:22', 'Firefox', '192.168.1.17'),
(18, 'Ethan Hall', 'ethan@example.com', 'Male', '2024-12-23 01:44:22', 'Safari', '192.168.1.18'),
(19, 'Charlotte Young', 'charlotte@example.com', 'Female', '2024-12-23 01:44:22', 'Edge', '192.168.1.19'),
(20, 'Ryan King', 'ryan@example.com', 'Male', '2024-12-23 01:44:22', 'Opera', '192.168.1.20'),
(21, 'Ava Wright', 'ava@example.com', 'Female', '2024-12-23 01:44:22', 'Chrome', '192.168.1.21'),
(22, 'Joshua Scott', 'joshua@example.com', 'Male', '2024-12-23 01:44:22', 'Firefox', '192.168.1.22'),
(23, 'Mia Adams', 'mia@example.com', 'Female', '2024-12-23 01:44:22', 'Safari', '192.168.1.23'),
(24, 'David Baker', 'david@example.com', 'Male', '2024-12-23 01:44:22', 'Edge', '192.168.1.24'),
(25, 'Amelia Nelson', 'amelia@example.com', 'Female', '2024-12-23 01:44:22', 'Opera', '192.168.1.25'),
(26, 'Jacob Carter', 'jacob@example.com', 'Male', '2024-12-23 01:44:22', 'Chrome', '192.168.1.26'),
(27, 'Emma Mitchell', 'emma@example.com', 'Female', '2024-12-23 01:44:22', 'Firefox', '192.168.1.27'),
(28, 'Alexander Perez', 'alexander@example.com', 'Male', '2024-12-23 01:44:22', 'Safari', '192.168.1.28'),
(29, 'Sophia Moore', 'sophia.moore@example.com', 'Female', '2024-12-23 01:44:22', 'Edge', '192.168.1.29'),
(30, 'Liam Green', 'liam@example.com', 'Male', '2024-12-23 01:44:22', 'Opera', '192.168.1.30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
