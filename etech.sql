-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 05:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etech`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `img`, `text`) VALUES
(1, 'Category 1', 'https://via.placeholder.com/800x400?text=img1.jpg', 'Description for Category 1'),
(2, 'Category 2', 'https://via.placeholder.com/800x400?text=img2.jpg', 'Description for Category 2'),
(3, 'Category 3', 'https://via.placeholder.com/800x400?text=img3.jpg', 'Description for Category 3'),
(4, 'Category 4', 'https://via.placeholder.com/800x400?text=img4.jpg', 'Description for Category 4'),
(5, 'Category 5', 'https://via.placeholder.com/800x400?text=img5.jpg', 'Description for Category 5'),
(6, 'Category 6', 'https://via.placeholder.com/800x400?text=img6.jpg', 'Description for Category 6'),
(7, 'Category 7', 'https://via.placeholder.com/800x400?text=img7.jpg', 'Description for Category 7'),
(8, 'Category 8', 'https://via.placeholder.com/800x400?text=img8.jpg', 'Description for Category 8'),
(9, 'Category 9', 'https://via.placeholder.com/800x400?text=img9.jpg', 'Description for Category 9'),
(10, 'Category 10', 'https://via.placeholder.com/800x400?text=img10.jpg', 'Description for Category 10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `img`, `text`, `subId`) VALUES
(1, 'Product 1-1-1', 'https://via.placeholder.com/800x400?text=prodimg1-1-1.jpg', 'Description for Product 1-1-1', 1),
(2, 'Product 1-1-2', 'https://via.placeholder.com/800x400?text=prodimg1-1-2.jpg', 'Description for Product 1-1-2', 1),
(3, 'Product 1-1-3', 'https://via.placeholder.com/800x400?text=prodimg1-1-3.jpg', 'Description for Product 1-1-3', 1),
(4, 'Product 1-1-4', 'https://via.placeholder.com/800x400?text=prodimg1-1-4.jpg', 'Description for Product 1-1-4', 1),
(5, 'Product 1-1-5', 'https://via.placeholder.com/800x400?text=prodimg1-1-5.jpg', 'Description for Product 1-1-5', 1),
(6, 'Product 1-2-1', 'https://via.placeholder.com/800x400?text=prodimg1-2-1.jpg', 'Description for Product 1-2-1', 2),
(7, 'Product 1-2-2', 'https://via.placeholder.com/800x400?text=prodimg1-2-2.jpg', 'Description for Product 1-2-2', 2),
(8, 'Product 1-2-3', 'https://via.placeholder.com/800x400?text=prodimg1-2-3.jpg', 'Description for Product 1-2-3', 2),
(9, 'Product 1-2-4', 'https://via.placeholder.com/800x400?text=prodimg1-2-4.jpg', 'Description for Product 1-2-4', 2),
(10, 'Product 1-2-5', 'https://via.placeholder.com/800x400?text=prodimg1-2-5.jpg', 'Description for Product 1-2-5', 2),
(11, 'Product 1-3-1', 'https://via.placeholder.com/800x400?text=prodimg1-3-1.jpg', 'Description for Product 1-3-1', 3),
(12, 'Product 1-3-2', 'https://via.placeholder.com/800x400?text=prodimg1-3-2.jpg', 'Description for Product 1-3-2', 3),
(13, 'Product 1-3-3', 'https://via.placeholder.com/800x400?text=prodimg1-3-3.jpg', 'Description for Product 1-3-3', 3),
(14, 'Product 1-3-4', 'https://via.placeholder.com/800x400?text=prodimg1-3-4.jpg', 'Description for Product 1-3-4', 3),
(15, 'Product 1-3-5', 'https://via.placeholder.com/800x400?text=prodimg1-3-5.jpg', 'Description for Product 1-3-5', 3),
(16, 'Product 1-4-1', 'https://via.placeholder.com/800x400?text=prodimg1-4-1.jpg', 'Description for Product 1-4-1', 4),
(17, 'Product 1-4-2', 'https://via.placeholder.com/800x400?text=prodimg1-4-2.jpg', 'Description for Product 1-4-2', 4),
(18, 'Product 1-4-3', 'https://via.placeholder.com/800x400?text=prodimg1-4-3.jpg', 'Description for Product 1-4-3', 4),
(19, 'Product 1-4-4', 'https://via.placeholder.com/800x400?text=prodimg1-4-4.jpg', 'Description for Product 1-4-4', 4),
(20, 'Product 1-4-5', 'https://via.placeholder.com/800x400?text=prodimg1-4-5.jpg', 'Description for Product 1-4-5', 4),
(21, 'Product 1-5-1', 'https://via.placeholder.com/800x400?text=prodimg1-5-1.jpg', 'Description for Product 1-5-1', 5),
(22, 'Product 1-5-2', 'https://via.placeholder.com/800x400?text=prodimg1-5-2.jpg', 'Description for Product 1-5-2', 5),
(23, 'Product 1-5-3', 'https://via.placeholder.com/800x400?text=prodimg1-5-3.jpg', 'Description for Product 1-5-3', 5),
(24, 'Product 1-5-4', 'https://via.placeholder.com/800x400?text=prodimg1-5-4.jpg', 'Description for Product 1-5-4', 5),
(25, 'Product 1-5-5', 'https://via.placeholder.com/800x400?text=prodimg1-5-5.jpg', 'Description for Product 1-5-5', 5),
(26, 'Product 2-1-1', 'https://via.placeholder.com/800x400?text=prodimg2-1-1.jpg', 'Description for Product 2-1-1', 6),
(27, 'Product 2-1-2', 'https://via.placeholder.com/800x400?text=prodimg2-1-2.jpg', 'Description for Product 2-1-2', 6),
(28, 'Product 2-1-3', 'https://via.placeholder.com/800x400?text=prodimg2-1-3.jpg', 'Description for Product 2-1-3', 6),
(29, 'Product 2-1-4', 'https://via.placeholder.com/800x400?text=prodimg2-1-4.jpg', 'Description for Product 2-1-4', 6),
(30, 'Product 2-1-5', 'https://via.placeholder.com/800x400?text=prodimg2-1-5.jpg', 'Description for Product 2-1-5', 6),
(31, 'Product 2-2-1', 'https://via.placeholder.com/800x400?text=prodimg2-2-1.jpg', 'Description for Product 2-2-1', 7),
(32, 'Product 2-2-2', 'https://via.placeholder.com/800x400?text=prodimg2-2-2.jpg', 'Description for Product 2-2-2', 7),
(33, 'Product 2-2-3', 'https://via.placeholder.com/800x400?text=prodimg2-2-3.jpg', 'Description for Product 2-2-3', 7),
(34, 'Product 2-2-4', 'https://via.placeholder.com/800x400?text=prodimg2-2-4.jpg', 'Description for Product 2-2-4', 7),
(35, 'Product 2-2-5', 'https://via.placeholder.com/800x400?text=prodimg2-2-5.jpg', 'Description for Product 2-2-5', 7),
(36, 'Product 2-3-1', 'https://via.placeholder.com/800x400?text=prodimg2-3-1.jpg', 'Description for Product 2-3-1', 8),
(37, 'Product 2-3-2', 'https://via.placeholder.com/800x400?text=prodimg2-3-2.jpg', 'Description for Product 2-3-2', 8),
(38, 'Product 2-3-3', 'https://via.placeholder.com/800x400?text=prodimg2-3-3.jpg', 'Description for Product 2-3-3', 8),
(39, 'Product 2-3-4', 'https://via.placeholder.com/800x400?text=prodimg2-3-4.jpg', 'Description for Product 2-3-4', 8),
(40, 'Product 2-3-5', 'https://via.placeholder.com/800x400?text=prodimg2-3-5.jpg', 'Description for Product 2-3-5', 8),
(41, 'Product 2-4-1', 'https://via.placeholder.com/800x400?text=prodimg2-4-1.jpg', 'Description for Product 2-4-1', 9),
(42, 'Product 2-4-2', 'https://via.placeholder.com/800x400?text=prodimg2-4-2.jpg', 'Description for Product 2-4-2', 9),
(43, 'Product 2-4-3', 'https://via.placeholder.com/800x400?text=prodimg2-4-3.jpg', 'Description for Product 2-4-3', 9),
(44, 'Product 2-4-4', 'https://via.placeholder.com/800x400?text=prodimg2-4-4.jpg', 'Description for Product 2-4-4', 9),
(45, 'Product 2-4-5', 'https://via.placeholder.com/800x400?text=prodimg2-4-5.jpg', 'Description for Product 2-4-5', 9),
(46, 'Product 2-5-1', 'https://via.placeholder.com/800x400?text=prodimg2-5-1.jpg', 'Description for Product 2-5-1', 10),
(47, 'Product 2-5-2', 'https://via.placeholder.com/800x400?text=prodimg2-5-2.jpg', 'Description for Product 2-5-2', 10),
(48, 'Product 2-5-3', 'https://via.placeholder.com/800x400?text=prodimg2-5-3.jpg', 'Description for Product 2-5-3', 10),
(49, 'Product 2-5-4', 'https://via.placeholder.com/800x400?text=prodimg2-5-4.jpg', 'Description for Product 2-5-4', 10),
(50, 'Product 2-5-5', 'https://via.placeholder.com/800x400?text=prodimg2-5-5.jpg', 'Description for Product 2-5-5', 10),
(51, 'Product 3-1-1', 'https://via.placeholder.com/800x400?text=prodimg3-1-1.jpg', 'Description for Product 3-1-1', 11),
(52, 'Product 3-1-2', 'https://via.placeholder.com/800x400?text=prodimg3-1-2.jpg', 'Description for Product 3-1-2', 11),
(53, 'Product 3-1-3', 'https://via.placeholder.com/800x400?text=prodimg3-1-3.jpg', 'Description for Product 3-1-3', 11),
(54, 'Product 3-1-4', 'https://via.placeholder.com/800x400?text=prodimg3-1-4.jpg', 'Description for Product 3-1-4', 11),
(55, 'Product 3-1-5', 'https://via.placeholder.com/800x400?text=prodimg3-1-5.jpg', 'Description for Product 3-1-5', 11),
(56, 'Product 3-2-1', 'https://via.placeholder.com/800x400?text=prodimg3-2-1.jpg', 'Description for Product 3-2-1', 12),
(57, 'Product 3-2-2', 'https://via.placeholder.com/800x400?text=prodimg3-2-2.jpg', 'Description for Product 3-2-2', 12),
(58, 'Product 3-2-3', 'https://via.placeholder.com/800x400?text=prodimg3-2-3.jpg', 'Description for Product 3-2-3', 12),
(59, 'Product 3-2-4', 'https://via.placeholder.com/800x400?text=prodimg3-2-4.jpg', 'Description for Product 3-2-4', 12),
(60, 'Product 3-2-5', 'https://via.placeholder.com/800x400?text=prodimg3-2-5.jpg', 'Description for Product 3-2-5', 12),
(61, 'Product 3-3-1', 'https://via.placeholder.com/800x400?text=prodimg3-3-1.jpg', 'Description for Product 3-3-1', 13),
(62, 'Product 3-3-2', 'https://via.placeholder.com/800x400?text=prodimg3-3-2.jpg', 'Description for Product 3-3-2', 13),
(63, 'Product 3-3-3', 'https://via.placeholder.com/800x400?text=prodimg3-3-3.jpg', 'Description for Product 3-3-3', 13),
(64, 'Product 3-3-4', 'https://via.placeholder.com/800x400?text=prodimg3-3-4.jpg', 'Description for Product 3-3-4', 13),
(65, 'Product 3-3-5', 'https://via.placeholder.com/800x400?text=prodimg3-3-5.jpg', 'Description for Product 3-3-5', 13),
(66, 'Product 3-4-1', 'https://via.placeholder.com/800x400?text=prodimg3-4-1.jpg', 'Description for Product 3-4-1', 14),
(67, 'Product 3-4-2', 'https://via.placeholder.com/800x400?text=prodimg3-4-2.jpg', 'Description for Product 3-4-2', 14),
(68, 'Product 3-4-3', 'https://via.placeholder.com/800x400?text=prodimg3-4-3.jpg', 'Description for Product 3-4-3', 14),
(69, 'Product 3-4-4', 'https://via.placeholder.com/800x400?text=prodimg3-4-4.jpg', 'Description for Product 3-4-4', 14),
(70, 'Product 3-4-5', 'https://via.placeholder.com/800x400?text=prodimg3-4-5.jpg', 'Description for Product 3-4-5', 14),
(71, 'Product 3-5-1', 'https://via.placeholder.com/800x400?text=prodimg3-5-1.jpg', 'Description for Product 3-5-1', 15),
(72, 'Product 3-5-2', 'https://via.placeholder.com/800x400?text=prodimg3-5-2.jpg', 'Description for Product 3-5-2', 15),
(73, 'Product 3-5-3', 'https://via.placeholder.com/800x400?text=prodimg3-5-3.jpg', 'Description for Product 3-5-3', 15),
(74, 'Product 3-5-4', 'https://via.placeholder.com/800x400?text=prodimg3-5-4.jpg', 'Description for Product 3-5-4', 15),
(75, 'Product 3-5-5', 'https://via.placeholder.com/800x400?text=prodimg3-5-5.jpg', 'Description for Product 3-5-5', 15),
(76, 'Product 4-1-1', 'https://via.placeholder.com/800x400?text=prodimg4-1-1.jpg', 'Description for Product 4-1-1', 16),
(77, 'Product 4-1-2', 'https://via.placeholder.com/800x400?text=prodimg4-1-2.jpg', 'Description for Product 4-1-2', 16),
(78, 'Product 4-1-3', 'https://via.placeholder.com/800x400?text=prodimg4-1-3.jpg', 'Description for Product 4-1-3', 16),
(79, 'Product 4-1-4', 'https://via.placeholder.com/800x400?text=prodimg4-1-4.jpg', 'Description for Product 4-1-4', 16),
(80, 'Product 4-1-5', 'https://via.placeholder.com/800x400?text=prodimg4-1-5.jpg', 'Description for Product 4-1-5', 16),
(81, 'Product 4-2-1', 'https://via.placeholder.com/800x400?text=prodimg4-2-1.jpg', 'Description for Product 4-2-1', 17),
(82, 'Product 4-2-2', 'https://via.placeholder.com/800x400?text=prodimg4-2-2.jpg', 'Description for Product 4-2-2', 17),
(83, 'Product 4-2-3', 'https://via.placeholder.com/800x400?text=prodimg4-2-3.jpg', 'Description for Product 4-2-3', 17),
(84, 'Product 4-2-4', 'https://via.placeholder.com/800x400?text=prodimg4-2-4.jpg', 'Description for Product 4-2-4', 17),
(85, 'Product 4-2-5', 'https://via.placeholder.com/800x400?text=prodimg4-2-5.jpg', 'Description for Product 4-2-5', 17),
(86, 'Product 4-3-1', 'https://via.placeholder.com/800x400?text=prodimg4-3-1.jpg', 'Description for Product 4-3-1', 18),
(87, 'Product 4-3-2', 'https://via.placeholder.com/800x400?text=prodimg4-3-2.jpg', 'Description for Product 4-3-2', 18),
(88, 'Product 4-3-3', 'https://via.placeholder.com/800x400?text=prodimg4-3-3.jpg', 'Description for Product 4-3-3', 18),
(89, 'Product 4-3-4', 'https://via.placeholder.com/800x400?text=prodimg4-3-4.jpg', 'Description for Product 4-3-4', 18),
(90, 'Product 4-3-5', 'https://via.placeholder.com/800x400?text=prodimg4-3-5.jpg', 'Description for Product 4-3-5', 18),
(91, 'Product 4-4-1', 'https://via.placeholder.com/800x400?text=prodimg4-4-1.jpg', 'Description for Product 4-4-1', 19),
(92, 'Product 4-4-2', 'https://via.placeholder.com/800x400?text=prodimg4-4-2.jpg', 'Description for Product 4-4-2', 19),
(93, 'Product 4-4-3', 'https://via.placeholder.com/800x400?text=prodimg4-4-3.jpg', 'Description for Product 4-4-3', 19),
(94, 'Product 4-4-4', 'https://via.placeholder.com/800x400?text=prodimg4-4-4.jpg', 'Description for Product 4-4-4', 19),
(95, 'Product 4-4-5', 'https://via.placeholder.com/800x400?text=prodimg4-4-5.jpg', 'Description for Product 4-4-5', 19),
(96, 'Product 4-5-1', 'https://via.placeholder.com/800x400?text=prodimg4-5-1.jpg', 'Description for Product 4-5-1', 20),
(97, 'Product 4-5-2', 'https://via.placeholder.com/800x400?text=prodimg4-5-2.jpg', 'Description for Product 4-5-2', 20),
(98, 'Product 4-5-3', 'https://via.placeholder.com/800x400?text=prodimg4-5-3.jpg', 'Description for Product 4-5-3', 20),
(99, 'Product 4-5-4', 'https://via.placeholder.com/800x400?text=prodimg4-5-4.jpg', 'Description for Product 4-5-4', 20),
(100, 'Product 4-5-5', 'https://via.placeholder.com/800x400?text=prodimg4-5-5.jpg', 'Description for Product 4-5-5', 20),
(101, 'Product 5-1-1', 'https://via.placeholder.com/800x400?text=prodimg5-1-1.jpg', 'Description for Product 5-1-1', 21),
(102, 'Product 5-1-2', 'https://via.placeholder.com/800x400?text=prodimg5-1-2.jpg', 'Description for Product 5-1-2', 21),
(103, 'Product 5-1-3', 'https://via.placeholder.com/800x400?text=prodimg5-1-3.jpg', 'Description for Product 5-1-3', 21),
(104, 'Product 5-1-4', 'https://via.placeholder.com/800x400?text=prodimg5-1-4.jpg', 'Description for Product 5-1-4', 21),
(105, 'Product 5-1-5', 'https://via.placeholder.com/800x400?text=prodimg5-1-5.jpg', 'Description for Product 5-1-5', 21),
(106, 'Product 5-2-1', 'https://via.placeholder.com/800x400?text=prodimg5-2-1.jpg', 'Description for Product 5-2-1', 22),
(107, 'Product 5-2-2', 'https://via.placeholder.com/800x400?text=prodimg5-2-2.jpg', 'Description for Product 5-2-2', 22),
(108, 'Product 5-2-3', 'https://via.placeholder.com/800x400?text=prodimg5-2-3.jpg', 'Description for Product 5-2-3', 22),
(109, 'Product 5-2-4', 'https://via.placeholder.com/800x400?text=prodimg5-2-4.jpg', 'Description for Product 5-2-4', 22),
(110, 'Product 5-2-5', 'https://via.placeholder.com/800x400?text=prodimg5-2-5.jpg', 'Description for Product 5-2-5', 22),
(111, 'Product 5-3-1', 'https://via.placeholder.com/800x400?text=prodimg5-3-1.jpg', 'Description for Product 5-3-1', 23),
(112, 'Product 5-3-2', 'https://via.placeholder.com/800x400?text=prodimg5-3-2.jpg', 'Description for Product 5-3-2', 23),
(113, 'Product 5-3-3', 'https://via.placeholder.com/800x400?text=prodimg5-3-3.jpg', 'Description for Product 5-3-3', 23),
(114, 'Product 5-3-4', 'https://via.placeholder.com/800x400?text=prodimg5-3-4.jpg', 'Description for Product 5-3-4', 23),
(115, 'Product 5-3-5', 'https://via.placeholder.com/800x400?text=prodimg5-3-5.jpg', 'Description for Product 5-3-5', 23),
(116, 'Product 5-4-1', 'https://via.placeholder.com/800x400?text=prodimg5-4-1.jpg', 'Description for Product 5-4-1', 24),
(117, 'Product 5-4-2', 'https://via.placeholder.com/800x400?text=prodimg5-4-2.jpg', 'Description for Product 5-4-2', 24),
(118, 'Product 5-4-3', 'https://via.placeholder.com/800x400?text=prodimg5-4-3.jpg', 'Description for Product 5-4-3', 24),
(119, 'Product 5-4-4', 'https://via.placeholder.com/800x400?text=prodimg5-4-4.jpg', 'Description for Product 5-4-4', 24),
(120, 'Product 5-4-5', 'https://via.placeholder.com/800x400?text=prodimg5-4-5.jpg', 'Description for Product 5-4-5', 24),
(121, 'Product 5-5-1', 'https://via.placeholder.com/800x400?text=prodimg5-5-1.jpg', 'Description for Product 5-5-1', 25),
(122, 'Product 5-5-2', 'https://via.placeholder.com/800x400?text=prodimg5-5-2.jpg', 'Description for Product 5-5-2', 25),
(123, 'Product 5-5-3', 'https://via.placeholder.com/800x400?text=prodimg5-5-3.jpg', 'Description for Product 5-5-3', 25),
(124, 'Product 5-5-4', 'https://via.placeholder.com/800x400?text=prodimg5-5-4.jpg', 'Description for Product 5-5-4', 25),
(125, 'Product 5-5-5', 'https://via.placeholder.com/800x400?text=prodimg5-5-5.jpg', 'Description for Product 5-5-5', 25);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `catId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `title`, `img`, `text`, `catId`) VALUES
(1, 'Subcategory 1-1', 'https://via.placeholder.com/800x400?text=subimg1-1.jpg', 'Description for Subcategory 1-1', 1),
(2, 'Subcategory 1-2', 'https://via.placeholder.com/800x400?text=subimg1-2.jpg', 'Description for Subcategory 1-2', 1),
(3, 'Subcategory 1-3', 'https://via.placeholder.com/800x400?text=subimg1-3.jpg', 'Description for Subcategory 1-3', 1),
(4, 'Subcategory 1-4', 'https://via.placeholder.com/800x400?text=subimg1-4.jpg', 'Description for Subcategory 1-4', 1),
(5, 'Subcategory 1-5', 'https://via.placeholder.com/800x400?text=subimg1-5.jpg', 'Description for Subcategory 1-5', 1),
(6, 'Subcategory 2-1', 'https://via.placeholder.com/800x400?text=subimg2-1.jpg', 'Description for Subcategory 2-1', 2),
(7, 'Subcategory 2-2', 'https://via.placeholder.com/800x400?text=subimg2-2.jpg', 'Description for Subcategory 2-2', 2),
(8, 'Subcategory 2-3', 'https://via.placeholder.com/800x400?text=subimg2-3.jpg', 'Description for Subcategory 2-3', 2),
(9, 'Subcategory 2-4', 'https://via.placeholder.com/800x400?text=subimg2-4.jpg', 'Description for Subcategory 2-4', 2),
(10, 'Subcategory 2-5', 'https://via.placeholder.com/800x400?text=subimg2-5.jpg', 'Description for Subcategory 2-5', 2),
(11, 'Subcategory 3-1', 'https://via.placeholder.com/800x400?text=subimg3-1.jpg', 'Description for Subcategory 3-1', 3),
(12, 'Subcategory 3-2', 'https://via.placeholder.com/800x400?text=subimg3-2.jpg', 'Description for Subcategory 3-2', 3),
(13, 'Subcategory 3-3', 'https://via.placeholder.com/800x400?text=subimg3-3.jpg', 'Description for Subcategory 3-3', 3),
(14, 'Subcategory 3-4', 'https://via.placeholder.com/800x400?text=subimg3-4.jpg', 'Description for Subcategory 3-4', 3),
(15, 'Subcategory 3-5', 'https://via.placeholder.com/800x400?text=subimg3-5.jpg', 'Description for Subcategory 3-5', 3),
(16, 'Subcategory 4-1', 'https://via.placeholder.com/800x400?text=subimg4-1.jpg', 'Description for Subcategory 4-1', 4),
(17, 'Subcategory 4-2', 'https://via.placeholder.com/800x400?text=subimg4-2.jpg', 'Description for Subcategory 4-2', 4),
(18, 'Subcategory 4-3', 'https://via.placeholder.com/800x400?text=subimg4-3.jpg', 'Description for Subcategory 4-3', 4),
(19, 'Subcategory 4-4', 'https://via.placeholder.com/800x400?text=subimg4-4.jpg', 'Description for Subcategory 4-4', 4),
(20, 'Subcategory 4-5', 'https://via.placeholder.com/800x400?text=subimg4-5.jpg', 'Description for Subcategory 4-5', 4),
(21, 'Subcategory 5-1', 'https://via.placeholder.com/800x400?text=subimg5-1.jpg', 'Description for Subcategory 5-1', 5),
(22, 'Subcategory 5-2', 'https://via.placeholder.com/800x400?text=subimg5-2.jpg', 'Description for Subcategory 5-2', 5),
(23, 'Subcategory 5-3', 'https://via.placeholder.com/800x400?text=subimg5-3.jpg', 'Description for Subcategory 5-3', 5),
(24, 'Subcategory 5-4', 'https://via.placeholder.com/800x400?text=subimg5-4.jpg', 'Description for Subcategory 5-4', 5),
(25, 'Subcategory 5-5', 'https://via.placeholder.com/800x400?text=subimg5-5.jpg', 'Description for Subcategory 5-5', 5),
(26, 'Subcategory 6-1', 'https://via.placeholder.com/800x400?text=subimg6-1.jpg', 'Description for Subcategory 6-1', 6),
(27, 'Subcategory 6-2', 'https://via.placeholder.com/800x400?text=subimg6-2.jpg', 'Description for Subcategory 6-2', 6),
(28, 'Subcategory 6-3', 'https://via.placeholder.com/800x400?text=subimg6-3.jpg', 'Description for Subcategory 6-3', 6),
(29, 'Subcategory 6-4', 'https://via.placeholder.com/800x400?text=subimg6-4.jpg', 'Description for Subcategory 6-4', 6),
(30, 'Subcategory 6-5', 'https://via.placeholder.com/800x400?text=subimg6-5.jpg', 'Description for Subcategory 6-5', 6),
(31, 'Subcategory 7-1', 'https://via.placeholder.com/800x400?text=subimg7-1.jpg', 'Description for Subcategory 7-1', 7),
(32, 'Subcategory 7-2', 'https://via.placeholder.com/800x400?text=subimg7-2.jpg', 'Description for Subcategory 7-2', 7),
(33, 'Subcategory 7-3', 'https://via.placeholder.com/800x400?text=subimg7-3.jpg', 'Description for Subcategory 7-3', 7),
(34, 'Subcategory 7-4', 'https://via.placeholder.com/800x400?text=subimg7-4.jpg', 'Description for Subcategory 7-4', 7),
(35, 'Subcategory 7-5', 'https://via.placeholder.com/800x400?text=subimg7-5.jpg', 'Description for Subcategory 7-5', 7),
(36, 'Subcategory 8-1', 'https://via.placeholder.com/800x400?text=subimg8-1.jpg', 'Description for Subcategory 8-1', 8),
(37, 'Subcategory 8-2', 'https://via.placeholder.com/800x400?text=subimg8-2.jpg', 'Description for Subcategory 8-2', 8),
(38, 'Subcategory 8-3', 'https://via.placeholder.com/800x400?text=subimg8-3.jpg', 'Description for Subcategory 8-3', 8),
(39, 'Subcategory 8-4', 'https://via.placeholder.com/800x400?text=subimg8-4.jpg', 'Description for Subcategory 8-4', 8),
(40, 'Subcategory 8-5', 'https://via.placeholder.com/800x400?text=subimg8-5.jpg', 'Description for Subcategory 8-5', 8),
(41, 'Subcategory 9-1', 'https://via.placeholder.com/800x400?text=subimg9-1.jpg', 'Description for Subcategory 9-1', 9),
(42, 'Subcategory 9-2', 'https://via.placeholder.com/800x400?text=subimg9-2.jpg', 'Description for Subcategory 9-2', 9),
(43, 'Subcategory 9-3', 'https://via.placeholder.com/800x400?text=subimg9-3.jpg', 'Description for Subcategory 9-3', 9),
(44, 'Subcategory 9-4', 'https://via.placeholder.com/800x400?text=subimg9-4.jpg', 'Description for Subcategory 9-4', 9),
(45, 'Subcategory 9-5', 'https://via.placeholder.com/800x400?text=subimg9-5.jpg', 'Description for Subcategory 9-5', 9),
(46, 'Subcategory 10-1', 'https://via.placeholder.com/800x400?text=subimg10-1.jpg', 'Description for Subcategory 10-1', 10),
(47, 'Subcategory 10-2', 'https://via.placeholder.com/800x400?text=subimg10-2.jpg', 'Description for Subcategory 10-2', 10),
(48, 'Subcategory 10-3', 'https://via.placeholder.com/800x400?text=subimg10-3.jpg', 'Description for Subcategory 10-3', 10),
(49, 'Subcategory 10-4', 'https://via.placeholder.com/800x400?text=subimg10-4.jpg', 'Description for Subcategory 10-4', 10),
(50, 'Subcategory 10-5', 'https://via.placeholder.com/800x400?text=subimg10-5.jpg', 'Description for Subcategory 10-5', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subId` (`subId`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
