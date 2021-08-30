-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2018 at 01:00 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_title`) VALUES
('Cloth Brand');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(60, 2, '::1', 7, 1),
(65, 6, '::1', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Haljine'),
(2, 'Farmerke'),
(3, 'Jakne'),
(4, 'Majice'),
(5, 'Trenerke'),
(6, 'Kupaci'),
(7, 'Odela');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Zuta haljina', 0, 'Zuta Haljina', 'Zuta Haljina.jpg', 'Zuta Haljina Yellow'),
(2, 1, 3, 'Crvena Haljina', 20, 'Crvenu haljinu obuci da ne slutis na radost', 'Crvena haljina.jpg', 'Crvena Haljina Red Dress '),
(3, 1, 3, 'Dijamantska haljina', 3000000, 'Dijamantska haljina od dijamanta ocito', 'Dijamantska haljina.jpg', 'Dijamantska haljina Diamond Rich ImaPare'),
(4, 1, 3, 'Zelena Haljina', 12000, 'Zelena Haljina', 'Zelena haljina.jpg', 'Zelena haljina Green Dress Pretty Woman'),
(5, 1, 2, 'Plava haljina', 10000, 'Plava Haljina', 'Plava haljina.jpg', 'Plava haljina dress amazing wow plavazena'),
(6, 1, 1, 'Ruska haljina', 35000, 'Ruska haljina', 'Ruska haljina.jpg', 'Ruska haljina Russian capitalism dress'),
(7, 1, 1, 'Viteska haljina', 50000, 'Viteska haljina', 'Viteska haljina.png', 'Viteska haljina Knight dress ForTheCrusade'),
(8, 1, 4, 'Japanska haljina', 40000, 'Japanska haljina', 'Japanska haljina.jpg', 'Japanska haljina dress Japan '),
(9, 1, 3, 'Ljubicasta haljina', 12000, 'Ljubicasta haljina', 'Ljubicasta haljina.jpg', 'Ljubicasta haljina Purple Dress'),
(10, 2, 6, 'Arnold farmerke', 1000, 'Farmerke', 'Farmerke.jpg', 'Farmerke Arnold'),
(16, 3, 6, 'Zelena jakna', 600, 'Zelena jakna', 'Zelena jakna.jpg', 'Zelena jakna'),
(17, 3, 6, 'Crvena jakna', 1000, 'Crvena jakna', 'crvenajakna.jpg', 'Crvena jakna'),
(22, 4, 6, 'Goku majica', 1300, 'Goku majica', 'Goku.jpg', 'Goku majica'),
(23, 4, 6, 'DBZ majica', 1900, 'DBZ majica', 'DBZ.jpg', 'DBZ majica'),
(24, 4, 6, 'Crna majica', 700, 'Crna je', 'crna.png', 'Crna majica'),
(32, 5, 0, 'Komplet adidas trenerka', 2500, 'Komplet adidas trenerka', 'adidas.jpg', 'Trenerke Adidas Komplet Russian Ruske '),
(33, 6, 2, 'Zenski crveni kupaci', 35000, 'Zenski crveni kupaci', 'zenskicrvenikupaci.jpg', 'Zenski crveni kupaci'),
(34, 6, 4, 'Zenski plavi kupaci', 1000, 'Zenski plavi kupaci', 'kupaci.JPG', 'Zenski Plavi Kupaci'),
(35, 6, 0, 'Zenski zuti kupaci', 6000, 'Zenski zuti kupaci', 'zuti.jpg', 'Zenski Zuti Kupaci'),
(36, 6, 5, 'Adidas kupaci', 1500, 'Adidas kupaci', 'Adidas kupaci.JPG', 'Adidas Kupaci'),
(37, 6, 5, 'Ljubicasti kupaci', 20000, 'Ljubicasti kupaci', 'Ljubicasti kupaci.jpg', 'Ljubicasti Kupaci Man Musko '),
(38, 6, 4, 'Spajdermen kupaci', 3500, 'Spajdermen kupaci', 'spajder.jpg', 'Spajdermen kupaci'),
(39, 6, 5, 'Partizan kupaci', 2500, 'Partizan kupaci', 'partizan.jpg', 'Partizan kupaci'),
(45, 1, 2, 'Crna haljina', 10000, '0', 'Crna haljina.jpg', 'Crna haljina Black Dress'),
(46, 1, 2, 'Hipik Haljina', 10000, '', 'Hipik haljina.JPG', 'Hipik haljina');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(6, 'Aleksa', 'Pancic', 'aca.pancic@gmail.com', '41158f04a628417efd3cfc83073e40cb', '0612341324', 'Jovana Ristica', 'Jovana Rist'),
(7, 'filip', 'filipovic', 'getrekt996@gmail.com', '65808598557021696528b70ee09131e4', '0658472310', 'cara lazara bb', 'cara lazara'),
(8, 'Aleksa', 'Pancic', 'aleksa.pancic@gmail.com', '52b3f186d0bbf9dd5eeb52bce6afc1ee', '0123124123', 'alsdmaf', 'sdaksda;skd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
