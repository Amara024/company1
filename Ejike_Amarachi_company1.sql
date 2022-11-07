-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2022 at 11:05 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company1`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `id` int(11) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `deliveryAddress` varchar(255) NOT NULL,
  `dateOfDelivery` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `productDescription`, `deliveryAddress`, `dateOfDelivery`, `status`, `quantity`) VALUES
(1, 'Mega growth shampoo', 'No 93 nise street Enugu', '2022-02-18', 'Yes', '2'),
(2, 'Mega growth deep conditioner', 'No 34 Nike road, Enugu', '2022-12-30', 'No', '4'),
(3, 'Mega growth deep conditioner', 'No 16 ikpeama Achara layout,Enugu', '2022-01-15', 'Yes', '10'),
(4, 'Mega growth leavin conditioner', 'No 30 owerri street, Trans-Ekulu', '2022-04-19', 'Yes', '10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productQuantity` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productDescription`, `productQuantity`) VALUES
(1, 'Mega growth shampoo', 'Hair shampoo', 30),
(2, 'Mega growth deep conditioner', 'used during wash to soften the hair', 50),
(3, 'Mega growth leavein conditioner', 'softens hair for braiding', 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `dateOfBirth` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `address`, `dateOfBirth`) VALUES
(1, 'Esther', 'Nnaji', 'No 34 Nike road,Enugu', '2005-04-30'),
(2, 'Frank', 'Anwana', 'No 93 nise street,Enugu', '1995-06-8'),
(3, 'Joy', 'Eneh', 'No 16 ikpeama Achara layout,Enugu', '1990-07-24'),
(4, 'Frances', 'Ejeh', 'No 30 owerri street, Trans-Ekulu', '2001-04-28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
