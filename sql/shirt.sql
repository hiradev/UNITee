-- phpMyAdmin SQL Dump
-- https://www.phpmyadmin.net/
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
-- Database: `shirt`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `unitPrice` int(11) NOT NULL,
  `units` int(25) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `vendorID`, `productID`, `productName`, `unitPrice`, `units`, `total`) VALUES
(1, 26, 27, 1, 'ieeegroc', 1200, 50, 60000),
(2, 26, 27, 2, 'ieeegr', 1000, 100, 100000),
(3, 26, 28, 3, 'ihackoc', 1200, 50, 60000),
(4, 26, 27, 4, 'ihack', 1500, 100, 150000),
(5, 29, 28, 5, 'intellioc', 1200, 50, 60000),
(6, 29, 28, 6, 'intelli', 800, 100, 80000),
(7, 29, 28, 7, 'moz', 100, 900, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `volume` varchar(25) NOT NULL,
  `imageName` text NOT NULL,
  `price` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `vendorID`, `name`, `volume`, `imageName`, `price`) VALUES
(1, 27, 'IEEE Game Rush OC', 'XL', 'ieeegrocfront.png', 'Rs. 1200'),
(2, 28, 'IEEE Game Rush', 'L', 'ieeegrfront.png', 'Rs. 1000'),
(3, 28, 'IHack OC', 'L', 'ihackocfront.png', 'Rs. 1200'),
(4, 27, 'IHack', 'XL', 'ihackfront.png', 'Rs. 1500'),
(5, 27, 'IEEE Intelli OC', 'XL', 'intelliocfront.png', 'Rs. 1200'),
(6, 27, 'IEEE Intelli', 'L', 'intellifront.png', 'Rs. 800'),
(7, 27, 'Mozilla Club', 'XL', 'mozfront.png', 'Rs. 900');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(1) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `name`, `email`, `password`, `usertype`, `contact`) VALUES
(25, 'admin', 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'a', '123'),
(26, 'Elon Musk', 'customer@customer.com', 'b39f008e318efd2bb988d724a161b61c6909677f', 'c', '456'),
(27, 'Bill Gates', 'vendor@vendor.com', '9fdcb2f441fcdd2e24e21bf8d45413ae72c0443c', 'v', '789'),
(28, 'vendor2', 'vendor2@vendor2.com', ' e38ad214943daad1d64c102faec29de4afe9da3d', 'v', '7711111112'),
(29, 'Customer 2', 'customer2@customer2.com', '2aa60a8ff7fcd473d321e0146afd9e26df395147', 'c', '456'),
(30, 'UCSC', 'ucsc', 'c0d0cb34565fe05ca2a14e8b13285bf6dbdf6dfc', 'a', '0771234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
