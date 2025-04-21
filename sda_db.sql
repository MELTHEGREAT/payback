-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 11:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sda_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_sda`
--

CREATE TABLE `users_sda` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_sda`
--

INSERT INTO `users_sda` (`user_id`, `username`, `password`, `created_at`, `role`) VALUES
(1, 'admin', '$2b$10$07n7UKn/U2XRrsLAOpn4qu3B8pqm0P0qM6ZRhylmHI6YxRkp1fRJ6', '2024-02-20 02:41:26', 'user'),
(3, '1', '$2b$10$knR8WF8WRXT1ZSuW16vDxOHYcT0hjagSLVD2W1UOShhAYamkhYG3y', '2024-02-20 04:06:28', 'user'),
(4, '2', '$2b$10$cjfK532zQFu91gcW8fcFQONaGwVM6nkelueJauUrSl7oGfvmmhZT2', '2024-02-20 04:08:53', 'user'),
(5, 'mel', '$2b$10$8u2tNLdXu6EDa7vIxXb.G.G1c4n3Jeu4yq7z6l4J35y.qnW0d5/ii', '2024-02-20 04:42:51', 'user'),
(6, 'Judel', '$2b$10$T21IacwQ2UiK5qLOS1Eh.OZpETxwNx7Cppl/keRvU3w43w0eHUzlS', '2024-02-20 04:44:49', 'user'),
(7, '12', '$2b$10$MCxecuLQI2rV6/zC0m72i.IBgoztgj3/5YRmU1RR3SVQ1H2oxHby.', '2024-02-22 08:25:11', 'user'),
(8, 'mels', '$2b$10$EpKX32gBnD4cZnh3xetHeOwav6fNF4Ek0.c0QkbiiSxv9QT9DkImq', '2024-02-22 08:28:19', 'user'),
(9, 'enrgjbh', '$2b$10$EMlHkekN4M3/.PNREBVMFecNNh/vxhSsZU073aIPD1Z4gFxNMqxPO', '2024-02-22 08:44:16', 'user'),
(10, 'sdfb', '$2b$10$UpItYE/aJa14tPGqq8SWqO90ZIL8tX43OdAgoEE6ExS2kt6/DfenW', '2024-02-22 08:45:49', 'user'),
(11, 'dsvdfbf', '$2b$10$6RxFiVc3kGAITAo5o64asul55pRquG8wO0ntNfnU6QJF/aaOf5ih2', '2024-02-22 08:46:28', 'user'),
(12, 'amag', '$2b$10$q3gzPDwBKkHk5UJbGssOeO4LBVpxnHzLooLg2VPksyfKYK8ulCL2.', '2024-02-22 08:49:02', 'user'),
(13, '11', '$2b$10$lN90tiNrNAfmwiexDAmEiOjI9SQndX.2GhBUlwaLChByIZin1VLw6', '2024-02-24 21:40:27', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_sda`
--
ALTER TABLE `users_sda`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_sda`
--
ALTER TABLE `users_sda`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
