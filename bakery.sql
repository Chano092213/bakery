-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 10:20 AM
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
-- Database: `bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(21, 3, 4, 1, '2025-01-04 09:19:32', '2025-01-04 09:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Pastries', '2024-12-15 13:58:00', '2024-12-15 13:58:00'),
(2, 'Cakes', '2024-12-15 13:58:10', '2024-12-15 13:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` int(11) NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_id`, `method_name`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '2024-12-15 18:35:11', '2024-12-15 18:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `product_name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(4, 1, 'Pandesal', 'A soft, slightly sweet bread roll that is a breakfast staple.', 2.00, 250, '../uploads/products/676013a4bb423.jpg', '2024-12-16 11:35:28', '2024-12-16 11:48:52'),
(5, 1, 'Ensaymada', 'A sweet, buttery bread topped with sugar and grated cheese.', 8.00, 50, '../uploads/products/676013ffafb39.png', '2024-12-16 11:50:23', '2024-12-16 11:50:23'),
(6, 1, 'Monay', 'Dense and slightly sweet bread with a characteristic round shape.', 10.00, 50, '../uploads/products/67601435355d8.png', '2024-12-16 11:51:17', '2024-12-16 11:51:17'),
(7, 1, 'Spanish Bread', 'A rolled bread filled with a buttery, sugary filling.', 12.00, 50, '../uploads/products/6760145e641f8.png', '2024-12-16 11:51:58', '2024-12-16 11:51:58'),
(8, 1, 'Pan de Coco', 'A soft bread with a sweet coconut filling.', 15.00, 50, '../uploads/products/67601479332f3.jpg', '2024-12-16 11:52:25', '2024-12-16 11:52:25'),
(9, 1, 'Kabayan', 'A cupcake-shaped bread with a dense and slightly sweet flavor.', 15.00, 50, '../uploads/products/67601496e29f2.jpg', '2024-12-16 11:52:54', '2024-12-16 11:52:54'),
(10, 1, 'Pan de Julia', 'Bread with a bright red sweet filling, often made from leftover pastries.', 15.00, 50, '../uploads/products/676014b83b13d.png', '2024-12-16 11:53:28', '2024-12-16 11:53:28'),
(11, 1, 'Putok', 'A denser version of monay, with a crack on top, giving it its name (\"explosion\").', 15.00, 15, '../uploads/products/6760168393f65.jpg', '2024-12-16 12:01:07', '2024-12-16 12:01:07'),
(12, 1, 'Cheese Bun', 'A soft bread roll filled with cheese and topped with sugar.', 20.00, 55, '../uploads/products/6760169e6f424.png', '2024-12-16 12:01:34', '2024-12-16 12:01:34'),
(13, 2, 'Yema Cake', 'A soft chiffon cake topped with a creamy and sweet yema frosting made from condensed milk and egg yolks, often garnished with grated cheese.', 150.00, 100, '../uploads/products/676017844260b.jpg', '2024-12-16 12:05:24', '2024-12-16 12:05:24'),
(14, 2, 'Ube Cake', 'A vibrant purple yam cake with a sweet, earthy flavor, usually layered with ube halaya (purple yam jam) and ube-flavored frosting.', 200.00, 50, '../uploads/products/676017c59a4c9.jpg', '2024-12-16 12:06:29', '2024-12-16 12:06:29'),
(15, 2, 'Sans Rival Cake', 'A rich and crunchy layered cake made with meringue, buttercream, and chopped cashews, giving it a delightful texture and sweetness.', 250.00, 120, '../uploads/products/6760183908098.jpg', '2024-12-16 12:08:25', '2024-12-16 12:08:25'),
(16, 2, 'Mocha Cake', 'A fluffy sponge cake infused with coffee flavor and layered with mocha buttercream, perfect for coffee lovers.', 200.00, 55, '../uploads/products/67601891b64bb.jpg', '2024-12-16 12:09:53', '2024-12-16 12:09:53'),
(17, 2, 'Mamon Cake', 'A soft and airy chiffon or sponge cake often brushed with butter and sprinkled with sugar and grated cheese on top.', 120.00, 60, '../uploads/products/676018e5327f8.jpg', '2024-12-16 12:11:17', '2024-12-16 12:11:17'),
(18, 2, 'Banana Cake', 'A soft and airy chiffon or sponge cake often brushed with butter and sprinkled with sugar and grated cheese on top.', 75.00, 127, '../uploads/products/6760197323b1a.jpg', '2024-12-16 12:13:39', '2024-12-16 12:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'Pending',
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `total_amount`, `payment_id`, `status`, `transaction_date`) VALUES
(10, 3, 100.00, 1, 'Pending', '2024-12-15 23:22:09'),
(11, 3, 280.00, 1, 'Completed', '2024-12-15 23:22:45'),
(12, 3, 408.00, 1, 'Completed', '2024-12-16 05:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `transaction_item_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`transaction_item_id`, `transaction_id`, `product_id`, `quantity`, `price`) VALUES
(13, 12, 14, 2, 200.00),
(14, 12, 5, 1, 8.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `contact`, `address`, `email`, `password`, `account_type`, `created_at`, `updated_at`) VALUES
(3, 'Kenneth', 'Lorenzo', '09123456789', '123 Main Street, City', 'kennetics1@gmail.com', '$2y$10$cybraq8uP7M1qulLpbzKXuyI67TxN0Oxdb4LYqyvu/udtRt4JzQD2', 2, '2024-12-15 11:31:36', '2024-12-15 16:58:00'),
(4, 'Blakie', 'Bun', '09123456789', 'Balintawak, Lipa City', 'blakiebun11@gmail.com', '$2y$10$OprHxo/y0E./UszNPnzuSOFh3tbZtvY1uoViq8L5FdWnVd9vDlpDG', 1, '2024-12-15 11:41:13', '2024-12-15 11:41:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`transaction_item_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `transaction_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment_method` (`payment_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
