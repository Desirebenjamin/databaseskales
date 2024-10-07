-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 08:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `total_price` decimal(10,2) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `order_date`, `order_time`, `customer_name`, `customer_contact`, `items`, `total_price`, `timestamp`) VALUES
(97, 'ORD-1725954274130', '2024-09-10', '10:44:34', 'Peter', '09999999999', '[{\"name\":\"one\",\"quantity\":\"24\",\"priceEach\":\"Ugx 12,000\",\"totalPrice\":\"Ugx 288,000\"}]', 0.00, '2024-09-10 06:44:35'),
(98, 'ORD-1725964281736', '2024-09-10', '13:31:21', 'Petero', '567865786578', '[{\"name\":\"One\",\"quantity\":\"23\",\"priceEach\":\"Ugx 4,000\",\"totalPrice\":\"Ugx 92,000\"},{\"name\":\"Two\",\"quantity\":\"78\",\"priceEach\":\"Ugx 2,009\",\"totalPrice\":\"Ugx 156,702\"}]', 0.00, '2024-09-10 09:31:21'),
(99, 'ORD-1725965104397', '2024-09-10', '13:45:04', 'Petero', '567865786578', '[{\"name\":\"One\",\"quantity\":\"23\",\"priceEach\":\"Ugx 4,000\",\"totalPrice\":\"Ugx 92,000\"},{\"name\":\"Two\",\"quantity\":\"78\",\"priceEach\":\"Ugx 2,009\",\"totalPrice\":\"Ugx 156,702\"}]', 0.00, '2024-09-10 09:45:04'),
(100, 'ORD-1725966657230', '2024-09-10', '14:10:57', 'Petero', '567865786578', '[{\"name\":\"One\",\"quantity\":\"23\",\"priceEach\":\"Ugx 4,000\",\"totalPrice\":\"Ugx 92,000\"},{\"name\":\"Two\",\"quantity\":\"78\",\"priceEach\":\"Ugx 2,009\",\"totalPrice\":\"Ugx 156,702\"}]', 0.00, '2024-09-10 10:10:57'),
(101, 'ORD-1725974011884', '2024-09-10', '16:13:31', 'Again', '3443433443', '[{\"name\":\"gtju\",\"quantity\":\"34\",\"priceEach\":\"Ugx 56\",\"totalPrice\":\"Ugx 1,904\"},{\"name\":\"ru\",\"quantity\":\"43\",\"priceEach\":\"Ugx 400\",\"totalPrice\":\"Ugx 17,200\"}]', 19104.00, '2024-09-10 12:13:31'),
(102, 'ORD-1725974422985', '2024-09-10', '16:20:22', 'Again', '3443433443', '[{\"name\":\"gtju\",\"quantity\":\"34\",\"priceEach\":\"Ugx 56\",\"totalPrice\":\"Ugx 1,904\"},{\"name\":\"ru\",\"quantity\":\"43\",\"priceEach\":\"Ugx 400\",\"totalPrice\":\"Ugx 17,200\"}]', 19104.00, '2024-09-10 12:20:23'),
(103, 'ORD-1726043682226', '2024-09-11', '11:34:42', 'papa', '2121212112', '[{\"name\":\"Pawpaw\",\"quantity\":\"32\",\"priceEach\":\"Ugx 10,000\",\"totalPrice\":\"Ugx 320,000\"}]', 320000.00, '2024-09-11 07:34:42'),
(104, 'ORD-1726056574490', '2024-09-11', '15:09:34', 'test1212', '323223234', '[{\"name\":\"fj\",\"quantity\":\"54\",\"priceEach\":\"Ugx 9,000\",\"totalPrice\":\"Ugx 486,000\"}]', 486000.00, '2024-09-11 11:09:34'),
(105, 'ORD-1726056629593', '2024-09-11', '15:10:29', 'rrere', '3243435', '[{\"name\":\"3\",\"quantity\":\"65\",\"priceEach\":\"Ugx 900\",\"totalPrice\":\"Ugx 58,500\"}]', 58500.00, '2024-09-11 11:10:29'),
(106, 'ORD-1726062739892', '2024-09-11', '16:52:19', 'rrere', '3243435', '[{\"name\":\"3\",\"quantity\":\"65\",\"priceEach\":\"Ugx 900\",\"totalPrice\":\"Ugx 58,500\"},{\"name\":\"wow\",\"quantity\":\"23\",\"priceEach\":\"Ugx 90,000\",\"totalPrice\":\"Ugx 2,070,000\"}]', 2128500.00, '2024-09-11 12:52:19'),
(107, 'ORD-1726062882354', '2024-09-11', '16:54:42', 'Wowweee', '11', '[{\"name\":\"oneee\",\"quantity\":\"1\",\"priceEach\":\"Ugx 100,000\",\"totalPrice\":\"Ugx 100,000\"}]', 100000.00, '2024-09-11 12:54:42'),
(108, 'ORD-1726063431592', '2024-09-11', '17:03:51', 'Yoooo', 'Null', '[]', 0.00, '2024-09-11 13:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `Username`, `Email`, `password`, `created_at`) VALUES
(4, 'Dee', 'dee@test', '$2y$10$cly.nZptDaUs.ZmPT2ReieCWicgY6zU0i/qY3cXJngm6aXyr4F1Hq', '2024-08-05 07:11:24'),
(5, 'test', 'test@test', '$2y$10$h58CdSooJZtu8g1Qk0UgZ.ZAWpSOAbmNFSVI8J0WXN3FQV7hAZZbK', '2024-08-05 07:34:46'),
(6, 'test2', 'test2@test2', '$2y$10$3rxk76uepqP9hZvuR0WTq.AXljndYxo5.bayXEdJ0De8bFQt6Kooe', '2024-08-05 07:37:45'),
(7, 'test4', 'test4@test4', '$2y$10$UjeVm3Doh.gm5DJxIP75Luh2/pe8ZCbia/UhKwUnDQ8uRdOXReR9q', '2024-08-05 09:22:57'),
(8, 'TEST5', 'test5@test5', '$2y$10$pBOD5HNkxikt.2i.casIZeSLjP6pfDvpZi0AUme3P83.JP8.JuXcS', '2024-08-18 18:36:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
