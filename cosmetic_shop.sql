-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 03:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_pass` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_name`, `user_pass`, `user_email`) VALUES
(1, 'zwe', '123', 'zwe@gmail.com'),
(2, 'kg', '123', 'kg@gamil.com'),
(3, 'kg', '123', 'kg@gamil.com'),
(4, 'kg', '123', 'kg@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `bal_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `add_qty` int(11) DEFAULT NULL,
  `open_qty` int(11) DEFAULT NULL,
  `sell_qty` int(11) DEFAULT NULL,
  `close_qty` int(11) DEFAULT NULL,
  `dandt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(0, 'Cleanser'),
(1, 'Toner'),
(2, 'Serums'),
(5, 'Emulsion'),
(6, 'Eye and lips care'),
(7, 'Cremes'),
(8, 'Cushions'),
(80, 'vv');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `item_image` varchar(100) DEFAULT NULL,
  `item_detail` varchar(200) DEFAULT NULL,
  `arr_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `price`, `category_id`, `item_qty`, `item_image`, `item_detail`, `arr_date`) VALUES
(1, 'Toner', '100', 1, 10, 'card2.webp', 'Purpose: Reduce redness and irritation. Ingredients: Chamomile, aloe vera, calendula, green tea.', '2023-11-15'),
(2, 'UV Protection', '200', 9, 1200, 'creme5.webp', 'Purpose: Replenish and hydrate the skin.Ingredients: Hyaluronic acid, glycerin, aloe vera, chamomile.', '2023-11-24'),
(3, 'Serums', '1500', 2, 21, 'card4.jpg', 'Purpose: Control excess oil and minimize pores.\r\nIngredients: Witch hazel, salicylic acid, niacinamide.', '2023-11-30'),
(4, 'Cleanser', '1200', 4, 10, 'cleansers.jpg', 'Purpose: Reduce redness and irritation.\r\nIngredients: Chamomile, aloe vera, calendula, green tea.', '2023-11-16'),
(5, 'Emulsion', '', 5, 1200, 'card3.webp', 'Purpose: Reduce redness and irritation.\r\nIngredients: Chamomile, aloe vera, calendula, green tea.', '2023-11-30'),
(6, 'eye and lips ', '3000', 6, 5, 'creme7.webp', 'Purpose: Protect the skin from free radicals.\r\nIngredients: Vitamin E, green tea extract, resveratrol.', '2023-11-30'),
(7, 'Cremes', '2500', 7, 2, 'OIP (4).jpg', 'Purpose: Even out skin tone and reduce dark spots.\r\nIngredients: Vitamin C, niacinamide, licorice extract.', '2023-11-29'),
(8, 'Cushions', '1200', 8, 10, 'creme1.jpg', 'Purpose: Even out skin tone and reduce dark spots.\r\nIngredients: Vitamin C, niacinamide, licorice extract.', '2023-11-30'),
(9, 'Srubs', '200', 10, 9, 'col2.jpg', 'Purpose: Even out skin tone and reduce dark spots.\r\nIngredients: Vitamin C, niacinamide, licorice extract.', '2023-11-30'),
(10, 'Cleanser', '8000', 8, 99, 'card3.webp', 'about item', '2024-01-02'),
(11, 'ii', '900', 2, 8888, '64f7c902337918e12f84a441ecc40de6.jpg', 'uyuyy', '2024-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `it_id` varchar(45) DEFAULT NULL,
  `it_name` varchar(45) DEFAULT NULL,
  `totalprice` varchar(45) DEFAULT NULL,
  `cus_name` varchar(45) DEFAULT NULL,
  `cus_phone` varchar(45) DEFAULT NULL,
  `cus_email` varchar(45) DEFAULT NULL,
  `cus_address` varchar(45) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `it_id`, `it_name`, `totalprice`, `cus_name`, `cus_phone`, `cus_email`, `cus_address`, `order_date`) VALUES
(1, '2', 'Toner 2', '200', 'kaung', '09890', 'ewrv@gmail.com', 'yangon', '2023-11-23'),
(2, '6', 'eye and lips ', '3000', 'kaung', '09890', 'kaung@gmail.com', 'yangon', '2023-12-30'),
(3, '6', 'eye and lips ', '3000', 'kaung', '07335', 'kaung@gmail.com', 'yangon', '2024-01-03'),
(4, '1', 'Toner', '100', 'kaung', '09890', 'kaung@gmail.com', 'yangon', '2024-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promo_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `promo_price` varchar(45) DEFAULT NULL,
  `promo_enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promo_id`, `item_id`, `promo_price`, `promo_enddate`) VALUES
(1, 1, '100', '2023-11-30'),
(2, 3, '500', '2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test4`
--

CREATE TABLE `test4` (
  `testdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testdate`
--

CREATE TABLE `testdate` (
  `testid` int(11) DEFAULT NULL,
  `ttdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`, `user_email`) VALUES
(1, 'kg', '123', 'kg@gamil.com');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `voucher_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `total_amount` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `voucher1`
--

CREATE TABLE `voucher1` (
  `vo_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `cus_name` varchar(45) DEFAULT NULL,
  `cus_phone` int(11) DEFAULT NULL,
  `cus_email` varchar(45) DEFAULT NULL,
  `cus_address` varchar(45) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `totalprice` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`bal_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_date`);

--
-- Indexes for table `test4`
--
ALTER TABLE `test4`
  ADD PRIMARY KEY (`testdate`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `voucher1`
--
ALTER TABLE `voucher1`
  ADD PRIMARY KEY (`vo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `bal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher1`
--
ALTER TABLE `voucher1`
  MODIFY `vo_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
