-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 02:02 AM
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
-- Database: `ims_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(5) NOT NULL,
  `bill_id` varchar(50) NOT NULL,
  `product_company` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_unit` varchar(20) NOT NULL,
  `packing_size` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `bill_id`, `product_company`, `product_name`, `product_unit`, `packing_size`, `price`, `qty`) VALUES
(1, '1', 'ben pow', 'iphone five', 'kg', '12', '15', '3'),
(2, '2', 'ben pow', 'iphone five', 'kg', '12', '15', '1'),
(3, '3', 'ben pow', 'iphone five', 'kg', '12', '15', '1'),
(4, '4', 'ben pow', 'iphone five', 'kg', '12', '15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `billing_header`
--

CREATE TABLE `billing_header` (
  `id` int(5) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `bill_type` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `bill_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing_header`
--

INSERT INTO `billing_header` (`id`, `full_name`, `bill_type`, `date`, `bill_no`) VALUES
(1, '5t4w54', 'Cash', '2025-01-06', 1),
(2, '5t4w54', 'Debit', '2025-01-06', 2),
(3, '5t4w54', 'Debit', '2025-01-06', 3),
(4, '5t4w54', 'Cash', '2025-01-06', 4);

-- --------------------------------------------------------

--
-- Table structure for table `company_name`
--

CREATE TABLE `company_name` (
  `id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_name`
--

INSERT INTO `company_name` (`id`, `company_name`) VALUES
(19, 'Matty'),
(20, 'ben pow'),
(21, 'user 2');

-- --------------------------------------------------------

--
-- Table structure for table `party_info`
--

CREATE TABLE `party_info` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `businessname` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `party_info`
--

INSERT INTO `party_info` (`id`, `firstname`, `lastname`, `businessname`, `contact`, `address`, `city`) VALUES
(8, 'Matt Inc', 'Nico', 'Matty', '5454556464', '56454545', 'Sheffield'),
(11, 'Benjamin', 'Powell-Wiffen', 'ben', '545656', '18 Linnet way\r\nStannington\r\nSheffield              ', 'Sheffield');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `packing_size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `company_name`, `product_name`, `unit`, `packing_size`) VALUES
(17, 'Matty', 'ben pow', 'kg', '12'),
(18, 'Matty', 'ben pow', 'mm', '122'),
(19, 'ben pow', 'iphone five', 'kg', '12'),
(20, 'ben pow', 'iphone', 'litre', '12'),
(21, 'Matty', 'Headlights', 'kg', '122'),
(22, 'user 2', 'user 2', 'mm', '12'),
(23, 'user 2', 'Headlights', 'kg', '18');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE `purchase_master` (
  `id` int(5) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `packing_size` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `party_name` varchar(100) NOT NULL,
  `purchase_type` varchar(100) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_master`
--

INSERT INTO `purchase_master` (`id`, `company_name`, `product_name`, `unit`, `packing_size`, `quantity`, `price`, `party_name`, `purchase_type`, `expiry_date`) VALUES
(69, 'Matty', 'ben pow', 'mm', '122', '15', '14', 'Matty', 'Cash', '0000-00-00'),
(70, 'ben pow', 'iphone five', 'kg', '12', '12', '12', 'ben', 'Debit', '0000-00-00'),
(71, 'Matty', 'Headlights', 'kg', '122', '12', '3', 'Matty', 'Cash', '0000-00-00'),
(72, 'user 2', 'user 2', 'mm', '12', '12', '12', 'ben', 'Debit', '0000-00-00'),
(73, 'Matty', 'ben pow', 'kg', '12', '10', '13', 'ben', 'Debit', '0000-00-00'),
(74, 'ben pow', 'iphone five', 'kg', '12', '10', '45', 'ben', 'Debit', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `id` int(5) NOT NULL,
  `product_company` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `packing_size` varchar(100) NOT NULL,
  `product_qty` varchar(5) NOT NULL,
  `product_selling_price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`id`, `product_company`, `product_name`, `product_unit`, `packing_size`, `product_qty`, `product_selling_price`) VALUES
(1, 'user 2', 'user 2', 'kg', '1', '15', '10'),
(40, 'Matty', 'ben pow', 'mm', '12', '12', '13'),
(47, 'Matty', 'ben pow', 'mm', '15', '122', '0'),
(48, 'ben pow', 'iphone five', 'kg', '12', '10', '15'),
(49, 'Matty', 'Headlights', 'kg', '12', '122', '0'),
(50, 'user 2', 'user 2', 'mm', '12', '12', '1'),
(51, 'Matty', 'ben pow', 'kg', '10', '12', '0'),
(52, 'ben pow', 'iphone five', 'kg', '10', '10', '0');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(5) NOT NULL,
  `unit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit`) VALUES
(19, 'kg'),
(20, 'litre'),
(21, 'mm');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `role`, `status`) VALUES
(19, 'admin', 'admin', 'admin', 'admin', 'admin', 'active'),
(20, 'admin1', 'admin', 'admin1', 'admin1', 'user', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_header`
--
ALTER TABLE `billing_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_name`
--
ALTER TABLE `company_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_info`
--
ALTER TABLE `party_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_master`
--
ALTER TABLE `purchase_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `billing_header`
--
ALTER TABLE `billing_header`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_name`
--
ALTER TABLE `company_name`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `party_info`
--
ALTER TABLE `party_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `purchase_master`
--
ALTER TABLE `purchase_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `stock_master`
--
ALTER TABLE `stock_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
