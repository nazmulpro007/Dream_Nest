-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 03:45 PM
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
-- Database: `homeysad`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount_transaction`
--

CREATE TABLE IF NOT EXISTS `amount_transaction` (
  `author` varchar(255) DEFAULT NULL,
  `trxID` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `ref` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'hold'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE IF NOT EXISTS `balance` (
  `author` varchar(255) DEFAULT NULL,
  `balance` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`author`, `balance`) VALUES
('mojibor_user@gmail.com', 9000000);

-- --------------------------------------------------------

--
-- Table structure for table `house_list`
--

CREATE TABLE IF NOT EXISTS `house_list` (
  `sl` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `currently_owned_by` varchar(255) DEFAULT NULL,
  `img_link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `house_list`
--

INSERT INTO `house_list` (`sl`, `author`, `currently_owned_by`, `img_link`, `title`, `price`, `address`, `details`, `type`, `status`) VALUES
('DRN1700156999377865565647a13de', 'mojibor_user@gmail.com', NULL, 'http://localhost/rent_house_uiu/backend/public/img/65565751cdb06_466200605.jpg', 'Ready made flat sale', '4500000', 'Sector - 12, Uttara, Dhaka -1230', '4 Bed , 2 Bath, 1 kitchen 2 balcony', 'sale', 'live'),
('DRN1700160336471765566350c8e12', 'builder@gmail.com', 'mojibor_user@gmail.com', 'http://localhost/rent_house_uiu/backend/public/img/655663590b173_650e68cccbed3.jpeg', 'Well furnished flat at Banani', '25000', 'Banani, Dhaka', '2  bed , 2 bath, 1 kitchen 2 balcony', 'rent', 'booked'),
('DRN170032769737936558f11133e22', 'builder@gmail.com', NULL, 'http://localhost/rent_house_uiu/backend/public/img/6558f12f188af_1054882-400x300.jpeg', 'Well furnished flat at Dhanmondi', '6500000', 'Dhanmondi Dhaka', '2 bed , 1 guest room , 2 bath, 1 kitchen 2 balcony', 'sale', 'live'),
('DRN170033282874186559051c047b2', 'builder@gmail.com', NULL, NULL, 'Well furnished home at uttara', '17000', 'Uttara, Dhaka', '2 Bed, 1 kitchen, 1 Bath', 'rent', 'live');

-- --------------------------------------------------------

--
-- Table structure for table `moving_packing_renovation`
--

CREATE TABLE IF NOT EXISTS `moving_packing_renovation` (
  `sl` varchar(255) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `cost` double NOT NULL DEFAULT 0,
  `done_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moving_packing_renovation`
--

INSERT INTO `moving_packing_renovation` (`sl`, `services`, `cost`, `done_by`, `status`) VALUES
('DRN1700156999377865565647a13de', 'moving', 6000, 'masumBillah@gmail.com', 'completed'),
('DRN1700160336471765566350c8e12', 'renovation', 150000, 'masumBillah@gmail.com', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `rent_review`
--

CREATE TABLE IF NOT EXISTS `rent_review` (
  `sl` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `access_token` longtext DEFAULT NULL,
  `time_limit` varchar(255) DEFAULT NULL,
  `path` varchar(255) NOT NULL DEFAULT 'user',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `sl`, `name`, `email`, `password`, `access_token`, `time_limit`, `path`, `status`) VALUES
(7, 'SNU169907308349996545cc3bf0cd9', 'Afreed Bin Haque', 'afreed46@gmail.com', '4d20487d04f7116118a6126dd75337e8', NULL, NULL, 'admin', 'Active'),
(9, 'SNU169910759724466546530dcaf53', 'Moidul Alam', 'builder@gmail.com', 'af7e57be0b30416ba9b0ff3923615d1b', '202311181937451700332665735365590479ae8f3', '1731955065', 'builder', 'Active'),
(12, 'SNU16997107283032654f870849f88', 'Mojibor Ali', 'mojibor_user@gmail.com', '62892ab0f63f54f089dbb6c2656740fd', '2023120215445617015282963630656b42e8bea6d', '1733150696', 'user', 'Active'),
(14, 'SNU17015012234874656ad927e34d5', 'Masum Billah', 'masumBillah@gmail.com', 'afa20a78d1e6020e99676c253c6dda20', NULL, NULL, 'home-decor', 'Active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
