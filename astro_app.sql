-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2021 at 08:46 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astro_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_horoscopes`
--

CREATE TABLE `daily_horoscopes` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `contact_number` text NOT NULL,
  `birth_date` text NOT NULL,
  `birth_month` text NOT NULL,
  `birth_year` text NOT NULL,
  `birth_hour` text NOT NULL,
  `birth_minute` text NOT NULL,
  `birth_second` text NOT NULL,
  `birth_place` text NOT NULL,
  `service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `name`, `gender`, `contact_number`, `birth_date`, `birth_month`, `birth_year`, `birth_hour`, `birth_minute`, `birth_second`, `birth_place`, `service`) VALUES
(1, 'Ratnesh', 'Male', '9137976398', '28', 'September', '1993', '00', '30', '57', 'Mumbai', 'Kundli Matching');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `details`) VALUES
(4, 'New Item 1', 'New Item Text 1'),
(5, 'Test notif 1 from server', 'Test notif 1 details '),
(6, 'New Item 1 from Server', 'New Item 1 Details from Server'),
(7, 'New Item 1 from Server latest', 'New Item 1 Details from Server latest'),
(8, 'Test Notif from Server', 'Server Notif Body'),
(9, 'Server notification title', 'server notification body'),
(10, 'Server notification title', 'server notification body');

-- --------------------------------------------------------

--
-- Table structure for table `page_data`
--

CREATE TABLE `page_data` (
  `id` int NOT NULL,
  `home_carousel_images` longtext NOT NULL,
  `address` text NOT NULL,
  `contact_number` text NOT NULL,
  `email` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `contact_number` text NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `first_name`, `last_name`, `contact_number`, `question`) VALUES
(3, 'Ratnesh', 'Karbhari', '9137976398', 'MessaHello kaise ho?');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `name`) VALUES
(3, '1617693996_4335ae7315a8becce081.jpg'),
(4, '1617694004_7605730fe35fa3c9ab56.jpg'),
(5, '1617694012_9897d988d2fa8c379a00.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `status`) VALUES
(1, 'Ratnesh', 'Karbhari', 'ratneshkarbhari74@gmail.com', '$2y$10$Rw.BIbApcJUOmVFvFIyRVeae4l2sLiW5NhNeNvsOzQ1LwO/Q.JBfS', 'admin', 'active'),
(6, 'Ratnesh', 'Karbhari', 'ratneshkarbhari74@gmail.com', '$2y$10$e2FVEgx7vaOT4AVpl/QHmu3fGOEWys8PP58DpZL2k3z592R0la.V2', 'subscriber', 'active'),
(7, 'Ratnvh', 'bhkb', 'rkarbhari23@gmail.com', '$2y$10$FTW4DsRjLzfxdktJiHEfauQONjhdmnnldvLIYa6PVbbCJni5ijt2G', 'subscriber', 'active'),
(8, 'Satish', 'kandregula', 'satish.m.kandregula@gmail.com', '$2y$10$CwN9wL55OCoc0KjTieTFUOPS5H96U28JMFr7Cx6GkWc4IkGerxUTS', 'subscriber', 'active'),
(9, 'Satish', 'kandregula', 'merlinragnarok1987@gmail.com@gmail.com', '$2y$10$5qfqx/jr/wYSn5gRZSosVucd.2Fiq16HxAjl7KXQCBKO4HB.DhExi', 'subscriber', 'active'),
(10, 'test', 'user', 'abc@gmail.com', '$2y$10$zPcpbc454pf3cfIwZD6dn.sI7NjZaMgvuoCeegjRtk38hKJS/r.wm', 'subscriber', 'active'),
(11, 'Ratnesh', 'Karbhari', 'ratneshkarbhari23@gmail.com', '$2y$10$0cvr3YDp5HV3MdrYSnC7N.FHpMn7kY82Xe5PnfuWw4DA.1jIaEHXS', 'subscriber', 'active'),
(12, 'Test ', 'User', 'testuser@gmail.com', '$2y$10$Hi83KZ8WHQFWIlDgsR9Cb.THGsbCie1DwREjMNli9VbiWXk47Q4ba', 'subscriber', 'active'),
(13, 'Dummy ', 'User', '', '$2y$10$pmnl.EIY2de6LgYR5dgv5OoZ8ztvfoYdsw95HLDbBec.plHocGP82', 'subscriber', 'active'),
(14, 'testuser2', 'test user 2 surname', 'testuser2@gmail.com', '$2y$10$RNejmiAIQODOjvcYc8B.huCKZ78PTlraOp6KG95ZM6LFn.LezVZqS', 'subscriber', 'active'),
(15, 'nilesh', 'rathore', 'Rathore.nilesh1489@gmail.com', '$2y$10$DUCSeQj35dMHhrvRUTuBN.ybFRPqaH7QH1WD/kCWIL1UxUCcyd4rW', 'subscriber', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_horoscopes`
--
ALTER TABLE `daily_horoscopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_data`
--
ALTER TABLE `page_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_horoscopes`
--
ALTER TABLE `daily_horoscopes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_data`
--
ALTER TABLE `page_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
