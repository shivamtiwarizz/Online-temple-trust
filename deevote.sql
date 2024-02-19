-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 08:19 PM
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
-- Database: `deevote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(10, 2, 2, 'purana', 299, 1, 'Agni_Puraan.jpg'),
(11, 2, 1, 'samved', 499, 1, 'Atharv_veda.jpg'),
(28, 1, 2, 'purana', 299, 1, 'Agni_Puraan.jpg'),
(29, 1, 1, 'samved hardcopy', 499, 1, 'Atharv_veda.jpg'),
(33, 286411, 2, 'purana', 299, 1, 'Agni_Puraan.jpg'),
(71, 570508, 2, 'purana', 299, 1, 'Agni_Puraan.jpg'),
(75, 329332, 2, 'purana', 299, 1, 'Agni_Puraan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_data`
--

CREATE TABLE `contact_form_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form_data`
--

INSERT INTO `contact_form_data` (`id`, `name`, `email`, `message`) VALUES
(5, 'shivam', 'fycsshivamtiwari@gmail.com', '    Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi illo nam enim tempore pariatur rerum mollitia impedit quos voluptatem reiciendis dolorum, aliquam vero beatae labore aspernatur recusandae rem nostrum praesentium aperiam atque porro repellat accusantium ullam? Sequi animi reprehenderit molestias illo, repudiandae voluptate sapiente rerum consectetur magnam, amet suscipit odio iusto placeat. Pariatur libero obcaecati aliquam sint sequi asperiores repudiandae.'),
(7, 'shivam', 'admin@admin.com', '    Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi illo nam enim tempore pariatur rerum mollitia impedit quos voluptatem reiciendis dolorum, aliquam vero beatae labore aspernatur recusandae rem nostrum praesentium aperiam atque porro repellat accusantium ullam? Sequi animi reprehenderit molestias illo, repudiandae voluptate sapiente rerum consectetur magnam, amet suscipit odio iusto placeat. Pariatur libero obcaecati aliquam sint sequi asperiores repudiandae.'),
(11, 'shivam', 'admirn@admin.com', '&lt;form action=&quot;contactus.php&quot; method=&quot;post&quot;&gt;     &lt;div class=&quot;input-box&quot;&gt;         &lt;input type=&quot;text&quot; class=&quot;name&quot; name=&quot;name&quot; placeholder=&quot;Enter your name&quot; required&gt;     &lt;/div&gt;     &lt;div class=&quot;input-box&quot;&gt;         &lt;input type=&quot;text&quot; class=&quot;email&quot; name=&quot;email&quot; placeholder=&quot;Enter your email&quot; required &gt;     &lt;/div&gt;     &lt;div class=&quot;input-box message-box&quot;&gt;         &lt;input type=&quot;text&quot; class=&quot;message&quot; name=&quot;message&quot; placeholder=&quot;Enter your message&quot; required&gt;     &lt;/div&gt;     &lt;div class=&quot;button1&quot;&gt;                         &lt;input type=&quot;submit&quot; value=&quot;Send Now&quot;&gt;                     &lt;/div&gt; &lt;/form&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(255) NOT NULL,
  `name` varchar(244) NOT NULL,
  `amount` varchar(244) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `created_at`) VALUES
(44, 'tommarow is mahashivratri,so temple will close soon', '2023-09-01 20:01:45'),
(45, 'Hawan booking is temporary closed!!', '2023-09-01 20:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `transaction_id` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`, `transaction_id`) VALUES
(4, 1, 'shivam', '345', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved (499 x 4) - ', 1996, '2023-10-10', 'completed', NULL),
(5, 1, 'shivam', '9878765786', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'purana (299 x 1) - ', 299, '2023-10-10', 'completed', NULL),
(7, 471858, 'shivam', '8898226111', 's4952889@gmail.com', 'flat no. EFDF, 3543e, vandergrift, MH, Honduras - 345345', 'purana (299 x 2) - ', 598, '2023-10-11', 'completed', NULL),
(23, 163646, 'shivam', '7878970', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - ', 499, '2023-10-13', 'completed', NULL),
(25, 163646, 'ashu', '8798564711', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - purana (299 x 1) - rudraksh (199 x 1) - mala (99 x 1) - ', 1096, '2023-10-13', 'completed', ''),
(27, 163646, 'shivam', '4564586345', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'purana (299 x 1) - samved hardcopy (499 x 1) - mala (99 x 1) - rudraksh (199 x 1) - ', 1096, '2023-10-13', 'completed', ''),
(28, 163646, 'ashjutosh', '8898226111', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - purana (299 x 1) - ', 798, '2023-10-13', 'completed', ''),
(29, 163646, 'shivam', '8898226111', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - ', 499, '2023-10-13', 'completed', ''),
(30, 163646, 'shivam', '8898226111', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - ', 499, '2023-10-13', 'completed', '528088133813'),
(31, 163646, 'shivam', '85495', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'purana (299 x 1) - ', 299, '2023-10-15', 'pending', '341808210815'),
(32, 163646, 'shivam', '4536644353', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - ', 499, '2023-10-15', 'pending', '342442416243'),
(33, 163646, 'shivam', '345', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'samved hardcopy (499 x 1) - ', 499, '2023-10-15', 'pending', '942507472063'),
(34, 163646, 'shivam', '9856523423', 's4952889@gmail.com', 'flat no. 35, 3543e, vandergrift, MH, Honduras - 345345', 'purana (299 x 1) - ', 299, '2023-10-15', 'pending', '071591882050'),
(35, 329332, 'ashutosh gaur', '8850206084', 'ashugaur123@gmail.com', 'flat no. 202,jaishree apartment, hanuman nagar,vithallwadi, Kalyan, Maharashtra , India - 421306', 'purana (299 x 1) - rudraksh (199 x 1) - ', 498, '2023-10-17', 'pending', '497732722329'),
(36, 145360, 'shivam', '8898226111', 'shivam@email.com', 'flat no. lokgram, kalyan, thane, mh, india - 421306', 'samved hardcopy (499 x 3) - ', 1497, '2023-10-17', 'pending', '543234068970'),
(37, 210284, 'shivam', '8898226111', 'shivam@email.com', 'flat no. lokgram, kalyan, thane, mh, india - 421306', 'samved hardcopy (499 x 4) - ', 1996, '2023-10-17', 'pending', '158401222305');

-- --------------------------------------------------------

--
-- Table structure for table `parking_slots`
--

CREATE TABLE `parking_slots` (
  `id` int(255) NOT NULL,
  `is_reserved` tinyint(1) DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking_slots`
--

INSERT INTO `parking_slots` (`id`, `is_reserved`, `name`, `email`, `phoneNumber`, `date`, `transaction_id`) VALUES
(1, 0, '', '', '', '2023-09-07 23:23:56.353252', '327034554739'),
(2, 0, '', '', '', '2023-09-07 23:23:56.353252', '891438226743'),
(3, 0, '', '', '', '2023-09-07 23:23:56.353252', '826381710071'),
(4, 0, '', '', '', '2023-09-07 23:23:56.353252', '360902868336'),
(5, 0, '', '', '', '2023-09-07 23:23:56.353252', '336083572822'),
(6, 0, '', '', '', '2023-09-07 23:23:56.353252', '690862521358'),
(7, 0, '', '', '', '2023-09-07 23:23:56.353252', '337566021452'),
(8, 0, '', '', '', '2023-09-07 23:23:56.353252', '610817979312'),
(9, 0, '', '', '', '2023-09-07 23:23:56.353252', '604758107643'),
(10, 0, '', '', '', '2023-09-07 23:23:56.353252', '200631713226'),
(11, 0, '', '', '', '2023-09-07 23:23:56.353252', '681051805309'),
(12, 0, '', '', '', '2023-09-07 23:23:56.353252', '364342948160'),
(13, 0, '', '', '', '2023-09-07 23:23:56.353252', '487676006305'),
(14, 0, '', '', '', '2023-09-07 23:23:56.353252', '318055908234'),
(15, 0, '', '', '', '2023-09-07 23:23:56.353252', '273400406120'),
(16, 0, '', '', '', '2023-09-07 23:23:56.353252', '160589300485'),
(17, 0, '', '', '', '2023-09-07 23:23:56.353252', '209692776257'),
(18, 0, '', '', '', '2023-09-07 23:23:56.353252', '214868244678'),
(19, 0, '', '', '', '2023-09-07 23:23:56.353252', '966003898552'),
(20, 0, '', '', '', '2023-09-07 23:23:56.353252', '140321930692'),
(21, 0, '', '', '', '2023-09-07 23:23:56.353252', '237541434517'),
(22, 0, '', '', '', '2023-09-07 23:23:56.353252', '324195904228'),
(23, 0, '', '', '', '2023-09-07 23:23:56.353252', '370024814571'),
(24, 0, '', '', '', '2023-09-07 23:23:56.353252', '262470193116'),
(25, 0, '', '', '', '2023-09-07 23:23:56.353252', '687840400891'),
(26, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(27, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(28, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(29, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(30, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(31, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(32, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(33, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(34, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(35, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(36, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(37, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(38, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(39, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(40, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(41, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(42, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(43, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(44, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(45, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(46, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(47, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(48, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(49, 0, '', '', '', '2023-09-07 23:23:56.353252', '0'),
(50, 0, '', '', '', '2023-09-07 23:23:56.353252', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pdf_files`
--

CREATE TABLE `pdf_files` (
  `id` int(11) NOT NULL,
  `pdf_content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdf_files`
--

INSERT INTO `pdf_files` (`id`, `pdf_content`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'samved hardcopy', 'one of the Veda of Hindu culture', 499, 'Atharv_veda.jpg', 'rig_veda.jpg', 'saam_veda.jpg'),
(2, 'purana', 'ancient purana', 299, 'Agni_Puraan.jpg', 'Bavam_puraan.jpg', 'Bhagvat_puraan.jpg'),
(3, 'mala', 'rudraksh mala', 99, 'Rudraksha-Mala-white-bg.jpg', 'mala_trirudra.jpg', 'mala.jpg'),
(4, 'rudraksh', 'pure rudraksh', 199, 'ekmukhi_rudraksh.jpg', 'rudrakash.jpg', 'accessories.png'),
(5, 'veda', 'vedas', 299, 'rig_veda.jpg', 'saam_veda.jpg', 'vedas_bundle.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(244) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(266) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `img`, `name`, `email`, `pass`, `token`, `status`, `date`) VALUES
(39, 'IMG-20220327-WA0523.jpg', 'Jethalal Gada', 'GadaElectronics@admin.com', '$2y$10$mNb7YYCgz8awxpdQTLx/eedSkrI.cwDc.zxivw9goc/DLX33tYlYW', 'd22091d1db20221831f8ced30fcb0c', 'inactive', '2023-08-28 02:00:29.000000'),
(40, 'IMG-20220329-WA0257.jpg', 'Admin', 'admin@admin.com', '$2y$10$q7NvJ1wLadiL/veaf/8o6OZo3Ob2G1zscu.QewUw0p7sQjAbbnw12', '4fd3503f2c784ec29b5dae7aa288ca', 'inactive', '2023-08-28 12:45:27.000000'),
(45, 'ksp_0651.webp', 'rohit sinha', 'rohit@gmail.com', '$2y$10$SVxYZbwc6f/5s7JbSL0Xm.m3G35aZ3Wvdpaw1Uc6DcG0tzeN9Gk3W', 'bf31aca4b11fcc92eae47daf269004', 'inactive', '2023-08-31 12:43:59.000000'),
(87, '', 'Ashutosh gaurr', 'shivam@email.com', '$2y$10$RWS3Arir/tbUwefg5/x0mu0.l/y22Zh5XGmgfgC4cwIbhhHmvdm5m', '9643aa43c423319e48e7249c283617', 'inactive', '2023-10-17 23:35:38.000000');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_link`) VALUES
(2, 'https://youtu.be/AMAE0S_NzxE');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(0, 210284, 1, 'samved hardcopy', 499, 'Atharv_veda.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_data`
--
ALTER TABLE `contact_form_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_slots`
--
ALTER TABLE `parking_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdf_files`
--
ALTER TABLE `pdf_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `contact_form_data`
--
ALTER TABLE `contact_form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `parking_slots`
--
ALTER TABLE `parking_slots`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pdf_files`
--
ALTER TABLE `pdf_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(244) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;