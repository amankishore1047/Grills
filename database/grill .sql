-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2021 at 05:15 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grill`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `category` varchar(100) NOT NULL,
  `item_menu` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`category`, `item_menu`, `price`, `discount`) VALUES
('SOUPS', 'Dragon Soup', 90, 5),
('SOUPS', 'Hot and Sour', 90, 5),
('SOUPS', 'Manchow Soup', 95, 5),
('SOUPS', 'Lemon Coriandar Soup', 90, 5),
('SOUPS', 'Sweet Corn Soup', 90, 5),
('SOUPS', 'Cilantro Soup', 95, 5),
('STARTERS', 'Chilli/Dragon Panneer', 170, 10),
('STARTERS', 'Scezwan Mushroom', 160, 10),
('STARTERS', 'Crispy Vegetables', 150, 8),
('STARTERS', 'Chilli Mushroom', 160, 10),
('STARTERS', 'Crispy Baby Corn', 150, 7),
('STARTERS', 'Corn Canal', 150, 6),
('STARTERS', 'Veg Burn Garlic', 150, 8);

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `item` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `date_time` varchar(40) NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_avail`
--

CREATE TABLE `item_avail` (
  `category` varchar(100) NOT NULL,
  `menu_item` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_avail`
--

INSERT INTO `item_avail` (`category`, `menu_item`, `quantity`) VALUES
('STARTERS', 'Chilli/Dragon Panneer', 40),
('STARTERS', 'Crispy Vegetables', 50),
('STARTERS', 'Chilli Mushroom', 50),
('STARTERS', 'Crispy Baby Corn', 50),
('STARTERS', 'Corn Canal', 50),
('STARTERS', 'Veg Burn Garlic', 50),
('SOUPS', 'Hot and Sour', 50),
('SOUPS', 'Manchow Soup', 60),
('SOUPS', 'Lemon Coriandar Soup', 50),
('SOUPS', 'Sweet Corn Soup', 50),
('SOUPS', 'Cilantro Soup', 50),
('SOUPS', 'Dragon Soup', 10),
('STARTERS', 'Scezwan Mushroom', 15);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `username` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`username`, `password`) VALUES
('admin', 'admin'),
('sh_sa', 'shsa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
